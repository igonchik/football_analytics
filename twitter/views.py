# -*- coding: utf-8 -*-
from __future__ import division
from django.shortcuts import render
from datetime import datetime, timedelta
from twython import Twython
from football_analytics.settings import SECRET_KEY
from football_analytics.settings import KEY
from django.utils.translation import ugettext as _
from models import *
from django.utils import translation
from django.utils.translation import check_for_language
from django.http import HttpResponseRedirect, HttpResponse
from football_analytics import settings
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.decorators import permission_required
from django.contrib.auth import update_session_auth_hash
from django.contrib.auth.forms import *
from django.template import RequestContext
from django.db.models import Q
from operator import or_, and_
import datetime as _datetime
from functools import wraps
from django.views.decorators.cache import patch_cache_control
from django.db import connection, transaction
from django.core.files import File
import urllib
from django.db.models import Count
from football_analytics.config import AUTHOR_ON_PAGE, MAP_TIMEOUT

from forms import *

twitter = Twython(app_key='wPVtiRIQ7fabNAUijdHRugaXI',
                  app_secret='8vR858WUTF6gRtrS52GQhbscYn32BuSD4nxWoITPMxH9f8Bx2F',
                  oauth_token='248080663-A6NXywiSlgNEdccrmPhM2gUwe74c86OkxLN6BufI',
                  oauth_token_secret='igPf79C9sKxWM4KHXXUO27zBdKx8BJSaLCaHpGkoHFaAa')


def set_language(request):
    next = None
    if request.method == 'GET' and 'next' in request.GET:
        next = request.GET['next']
    if not next:
        next = request.META.get('HTTP_REFERER', None)
    if not next:
        next = '/'
    response = HttpResponseRedirect(next)
    if request.method == 'GET':
        lang_code = request.GET.get('lang', None)
        if lang_code and check_for_language(lang_code):
            if hasattr(request, 'sessionid'):
                request.session[settings.LANGUAGE_COOKIE_NAME] = lang_code
            else:
                response.set_cookie(settings.LANGUAGE_COOKIE_NAME, lang_code)
            translation.activate(lang_code)

    return response


def u_login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    next = request.META.get('HTTP_REFERER', None)
    if not next:
        next = '/'
    if user is not None:
        if user.is_active:
            login(request, user)
            return HttpResponseRedirect(next)
        else:
            pass
    else:
        pass


def u_logout(request):
    next = request.META.get('HTTP_REFERER', None)
    if not next:
        next = '/'
    logout(request)
    return HttpResponseRedirect(next)


def password_change(request):
    if request.method == 'POST':
        form = PasswordChangeForm(user=request.user, data=request.POST)
        if form.is_valid():
            form.save()
            update_session_auth_hash(request, form.user)
        return HttpResponseRedirect('/')
    else:
        next = request.META.get('HTTP_REFERER', None)
        if not next:
            next = '/'
        return HttpResponseRedirect(next)


def never_ever_cache(decorated_function):
    """
        Запрет на кэширование страницы
    """
    @wraps(decorated_function)
    def wrapper(*args, **kwargs):
        response = decorated_function(*args, **kwargs)
        patch_cache_control(response, no_cache=True, no_store=True, must_revalidate=True, max_age=0)
        return response
    return wrapper


@transaction.atomic
def get_user_timeline(author):
    last_id = author.maxid
    if last_id != 0:
        try:
            user_timeline = twitter.get_user_timeline(screen_name=author.name, since_id=last_id)
        except:
            user_timeline = twitter.get_user_timeline(screen_name=author.name)
            for rec in user_timeline:
                if int(rec['id_str']) >= last_id:
                    last_id = int(rec['id_str'])
                    break
            user_timeline = twitter.get_user_timeline(screen_name=author.name, since_id=last_id)
    else:
        user_timeline = twitter.get_user_timeline(screen_name=author.name)
    for rec in user_timeline:
        hashtags = []
        for ht in rec['entities']['hashtags']:
            hashtags.append(ht['text'])
        try:
            msg = [int(rec['id_str']), rec['text'], hashtags,
                        datetime.strptime(rec['created_at'], '%a %b %d %H:%M:%S %z %Y')]
        except:
            if '+' in rec['created_at']:
                msg = [int(rec['id_str']), rec['text'], hashtags,
                            datetime.strptime('{0}{1}'.format(rec['created_at'][:len(rec['created_at'])-11],
                                                              rec['created_at'][len(rec['created_at'])-5:]),
                                              '%a %b %d %H:%M:%S %Y') +
                            _datetime.timedelta(hours=int(rec['created_at'][len(rec['created_at'])-9:
                            len(rec['created_at'])-7]),
                                                minutes=int(rec['created_at'][len(rec['created_at'])-7:
                                                len(rec['created_at'])-5]))]
            else:
                 msg = [int(rec['id_str']), rec['text'], hashtags,
                            datetime.strptime('{0}{1}'.format(rec['created_at'][:len(rec['created_at'])-11],
                                                              rec['created_at'][len(rec['created_at'])-5:]),
                                              '%a %b %d %H:%M:%S %Y') -
                            _datetime.timedelta(hours=int(rec['created_at'][len(rec['created_at'])-9:
                            len(rec['created_at'])-7]),
                                                minutes=int(rec['created_at'][len(rec['created_at'])-7:
                                                len(rec['created_at'])-5]))]
        if not TTweetsTweet.objects.filter(tt_id=msg[0]).exists():
            tweet = TTweetsTweet(tt_id=msg[0], ta_id=author, text=msg[1], created_at=msg[3])
            tweet.save()
            predicates = []
            for word in hashtags:
                predicates.append(('th_id__hashtag', word.upper()))
                obj = TTweetsHashTag.objects.get_or_create(hashtag=word.upper())[0]
                TTweetsTweetHashTag(th_id=obj, tt_id=tweet).save()
            for word in tweet.text.split(' '):
                predicates.append(('th_id__hashtag', word.upper()))
            q_list = [Q(x) for x in predicates]
            fc = TTweetsClubHashTag.objects.select_related('th_id').filter(reduce(or_, q_list)).values_list('fc_id_id')
            fp = TTweetsPlayerHashTag.objects.select_related('th_id').filter(reduce(or_, q_list)).\
                values_list('fp_id_id')
            for fc_rec in fc:
                tclubtweet = TTweetsClubTweetRel(fc_id_id=int(fc_rec), tt_id=tweet)
                tclubtweet.save()
            for fp_rec in fp:
                tplayertweet = TTweetsPlayerTweetRel(fp_id_id=int(fp_rec), tt_id=tweet)
                tplayertweet.save()
            if rec['retweeted']:
                msg = rec['retweeted_status']['user']
                msg['url'] = 'https://twitter.com/{0}'.format(msg['screen_name'])
                obj, created = TTweetsAuthor.objects.get_or_create(url=msg['url'], name=msg['screen_name'])
                if not created and obj.rating < author.rating:
                    author.rating = (author.rating-obj.rating)/4*3 + obj.rating
                    obj.rating += (author.rating-obj.rating)/4
                else:
                    obj.rating = author.rating
                obj.realname = msg['name']
                obj.descr = msg['description']
                if msg['profile_image_url'] != obj.logo_url:
                    try:
                        photo = urllib.urlretrieve(msg['profile_image_url'])
                        obj.logo.save(os.path.basename(msg['profile_image_url']), File(open(photo[0], 'rb')))
                        if 'profile_banner_url' not in msg.keys():
                            msg['profile_banner_url'] = None
                        if 'logo_url' not in msg.keys():
                            msg['logo_url'] = None
                        obj.banner_url = msg['profile_banner_url']
                        obj.logo_url = msg['profile_image_url'].replace(' ', '')
                    except:
                        pass
                obj.save()
    if len(user_timeline) > 0:
        author.maxid = int(user_timeline[0]['id'])
        author.save()


def get_users_timeline():
    auths = TTweetsAuthor.objects.all()
    for rec_auth in auths:
        try:
            get_user_timeline(rec_auth)
        except:
            break


def index(request):
    """
        Главная страница
    """
    #get_users_timeline()
    lang_code = request.LANGUAGE_CODE
    countries = TWorldCountryTr.objects.filter(langcode=
                                               lang_code).filter(wc_id__coordX__gt=0).select_related('wc_id')\
        .annotate(tweets_count=Count('wc_id__tworldcity__tfootballclub__tweets'))
    cities = TWorldCityTr.objects.filter(langcode=lang_code).filter(wcity_id__coordX__gt=0).select_related('wcity_id_'
                                                                                                           '_wc_id')\
        .annotate(tweets_count=Count('wcity_id__tfootballclub__tweets'))

    vals = list(TTweetsTweet.objects.annotate(clubs_count=Count('ttweetsclubtweetrel')).\
        filter(created_at__lte=datetime.now()-timedelta(milliseconds=MAP_TIMEOUT), clubs_count__gte=2).\
        select_related('ta_id').prefetch_related('ttweetsclubtweetrel_set__fc_id__wcity_id__tworldcitytr_set__langcode',
                                                 'ttweetsclubtweetrel_set__fc_id__tfootballclubtr_set__langcode'))

    tweets_feed = list(TTweetsTweet.objects.filter(created_at__lte=datetime.now()-timedelta(milliseconds=MAP_TIMEOUT))\
         .select_related('ta_id').order_by('-created_at')[:10])
    link_dict = {}
    club_dict = {}
    for rec in vals:
        key = u''
        key_club = u''
        for clubs in rec.ttweetsclubtweetrel_set.all():
            ls = u''
            ls_club = u''
            for l in clubs.fc_id.wcity_id.tworldcitytr_set.all():
                if l.langcode.langcode == lang_code:
                    ls = l
                    break
            for l in clubs.fc_id.tfootballclubtr_set.all():
                if l.langcode.langcode == lang_code:
                    ls_club = l
                    break
            if len(key) == 0:
                key = ls.wcity_name
            elif '-' not in key:
                key = u'{0}-{1}'.format(key, ls.wcity_name)
            if len(key_club) == 0:
                key_club = ls_club.fc_name
            elif '-' not in key_club:
                key_club = u'{0}-{1}'.format(key_club, ls_club.fc_name)
        if key not in link_dict.keys():
            link_dict.update({key: [rec.ta_id.rating, rec]})
        else:
            link_dict[key] = link_dict[key].append(rec.ta_id.rating, rec)
        if key_club not in club_dict.keys():
            club_dict.update({key_club: [rec.ta_id.rating, rec]})
        else:
            club_dict[key_club] = club_dict[key_club].append(rec.ta_id.rating, rec)
    rez = []
    for key, vals in link_dict.items():
        main_rating = 1
        tik = 1
        tweets = {}
        maxrt = 0
        for rec in vals:
            if tik % 2 != 0:
                main_rating *= (100-rec)
                if rec > maxrt:
                    maxrt = rec
                tik = 2
            else:
                if rec.ta_id.rating not in tweets.keys():
                    tweets.update({rec.ta_id.rating: rec})
                tik = 1
        main_rating = 100 - main_rating
        rez.append([key.split('-'), main_rating/33, tweets[maxrt]])
    country_links = rez
    rez = []
    for key, vals in club_dict.items():
        main_rating = 1
        tik = 1
        tweets = {}
        maxrt = 0
        for rec in vals:
            if tik % 2 != 0:
                main_rating *= (100-rec)
                if rec > maxrt:
                    maxrt = rec
                tik = 2
            else:
                if rec.ta_id.rating not in tweets.keys():
                    tweets.update({rec.ta_id.rating: rec})
                tik = 1
        main_rating = 100 - main_rating
        rez.append([key.split('-'), main_rating/33, tweets[maxrt]])
    city_links = rez
    return render(request, 'main.html', {'index': True, 'countries': countries, 'cities': cities,
                                         'country_links': country_links, 'city_links': city_links,
                                         'transfer_window': True, 'tweets': tweets_feed},
                  context_instance=RequestContext(request))


def setting_req(request):
    """
        Страница настроек
    """
    return render(request, 'settings/settings.html', {'settings': True}, context_instance=RequestContext(request))


def setting_author(request):
    """
        Страница авторов
    """
    page = 1
    if request.method == 'GET' and 'page' in request.GET:
        try:
            page = int(request.GET['page'])
        except:
            page = 1
    if request.method == 'POST' and 'page' in request.POST:
        try:
            page = int(request.POST['page'])
        except:
            page = 1
    pgs = (int(page)-1)*AUTHOR_ON_PAGE
    pgs1 = int(page)*AUTHOR_ON_PAGE
    show_next = False
    q = ""
    if request.method == 'POST' and 'q' in request.POST:
        auths = TTweetsAuthor.objects.filter(Q(name__icontains=request.POST['q']) |
                                             Q(realname__icontains=request.POST['q']))\
        .annotate(num_tweets=Count('ttweetstweet'))[pgs:pgs1]
        count = TTweetsAuthor.objects.filter(Q(name__icontains=request.POST['q']) |
                                             Q(realname__icontains=request.POST['q'])).count()
        q = request.POST['q']
    else:
        auths = TTweetsAuthor.objects.all().annotate(num_tweets=Count('ttweetstweet'))[pgs:pgs1]
        count = TTweetsAuthor.objects.all().count()
    if pgs1 < count:
        show_next = True
    template = 'settings/authors.html'
    if page > 1 or request.method == 'POST' and 'page' in request.POST:
        template = 'settings/authors_mini.html'
    return render(request, template, {'auths': auths, 'page': page, 'show_next': show_next, 'count_a': count,
                                      'ispost': (request.method == 'POST' and 'q' in request.POST), 'q': q,
                                      'actions': True},
                  context_instance=RequestContext(request))


def recache_photo(request, auth=0):
    if auth == 0:
        auths = TTweetsAuthor.objects.all()
        path = os.path.join(settings.MEDIA_ROOT, 'twitter', 'photo')
        for the_file in os.listdir(path):
            file_path = os.path.join(path, the_file)
            try:
                if os.path.isfile(file_path):
                    os.unlink(file_path)
            except:
                pass
    else:
        auths = TTweetsAuthor.objects.filter(ta_id=int(auth))
        try:
            if auths.exists() and auths[0].logo and os.path.isfile(auths[0].logo.path):
                os.unlink(auths[0].logo.path)
        except:
            pass

    for rec in auths:
        if rec.logo_url:
            try:
                photo = urllib.urlretrieve(rec.logo_url)
                rec.logo.save(os.path.basename(rec.logo_url), File(open(photo[0], 'rb')))
                rec.save()
            except:
                pass

    if auth > 0 and auths.exists():
        return HttpResponse(auths[0].logo.url)
    return HttpResponseRedirect(request.META['HTTP_REFERER'])


def remove_auth(request, id):
    id = int(id)
    auth = TTweetsAuthor.objects.filter(ta_id=id)
    if auth.exists():
        auth[0].delete()
    return HttpResponse('OK')


def add_auth(request):
    if request.method == 'POST' and 'url' in request.POST:
        try:
            msg = twitter.show_user(screen_name=request.POST['url'])
        except:
            return HttpResponse(_("PageNotFound"))

        if TTweetsAuthor.objects.filter(url=msg['url']).exists() or \
                TTweetsAuthor.objects.filter(url='https://twitter.com/{0}'.format(msg['screen_name'])).exists():
            return HttpResponse(_("AuthorExists"))
        msg['url'] = 'https://twitter.com/{0}'.format(request.POST['url'])
        if 'profile_banner_url' not in msg.keys():
            msg['profile_banner_url'] = None
        if 'logo_url' not in msg.keys():
            msg['logo_url'] = None
        auths = TTweetsAuthor(url=msg['url'], name=msg['screen_name'], realname=msg['name'],
                                  descr=msg['description'],
                                  banner_url=msg['profile_banner_url'],
                                  logo_url=msg['profile_image_url'].replace(' ', ''))
        try:
            photo = urllib.urlretrieve(msg['profile_image_url'])
            auths.logo.save(os.path.basename(msg['profile_image_url']), File(open(photo[0], 'rb')))
            auths.save()
        except:
            return HttpResponse(_("ServerError"))
        return HttpResponse('ok')
    return render(request, 'settings/add_author.html', {}, context_instance=RequestContext(request))


def get_author_from_url(request):
    if request.method == 'GET' and 'url' in request.GET:
        try:
            msg = twitter.show_user(screen_name=request.GET['url'])
            msg['url'] = 'https://twitter.com/{0}'.format(request.GET['url'])
            if 'profile_banner_url' not in msg.keys():
                msg['profile_banner_url'] = None
            if 'logo_url' not in msg.keys():
                msg['logo_url'] = None
            auths = TTweetsAuthor(url=msg['url'], name=msg['screen_name'], realname=msg['name'],
                                  descr=msg['description'],
                                  banner_url=msg['profile_banner_url'],
                                  logo_url=msg['profile_image_url'].replace(' ', ''))
            exists = False
            if TTweetsAuthor.objects.filter(url=msg['url']).exists():
                exists = True
            return render(request, 'settings/author_preview.html', {'rec': auths, 'exists': exists},
                          context_instance=RequestContext(request))
        except:
            pass
    return HttpResponse('')


def world_list(request):
    lang_code = request.LANGUAGE_CODE
    countries = list(TWorldCountryTr.objects.filter(langcode=
                                               lang_code).select_related('wc_id')\
        .annotate(country_count=Count('wc_id__tworldcity__tfootballclub')).order_by('wc_name'))
    cities = list(TWorldCityTr.objects.filter(langcode=lang_code).select_related('wcity_id__wc_id')\
        .annotate(city_count=Count('wcity_id__tfootballclub')).order_by('wcity_name'))
    return render(request, 'settings/world/world_list.html', {'countries': countries, 'cities': cities},
                  context_instance=RequestContext(request))


@transaction.atomic()
def save(request):
    local = TLocalization.objects.get(langcode='ru')
    msg = urllib.urlopen('http://localhost:63342/football_analytics/works/spisok.htm')
    msg = msg.read()
    msg = msg[msg.index('<table>')+7:msg.index('</table>')].split('</tr>')
    full = []
    for rec in msg:
        for elem in rec.split('</td>'):
            elem = elem.replace('<td>', '').replace('</td>', '').replace('</tr>', '').replace('<tr>', '').\
                replace('\r', '').replace('\n', '').replace('\t', '')
            full.append(elem)
        if len(full) > 4:
            full.pop(4)
        if len(full) == 4 and not TWorldRegionTr.objects.filter(wr_name=full[3]).exists():
            bigtmp = TWorldRegion.objects.create(coordX=0, coordY=0)
            bigtmp.save()
            tmp = TWorldRegionTr.objects.create(langcode=local, wr_name=full[3], wr_id=bigtmp)
            tmp.save()
        elif len(full) == 4:
            bigtmp = TWorldRegion.objects.get(wr_id=TWorldRegionTr.objects.filter(wr_name=full[3])[0].wr_id_id)
        if len(full) == 4:
            x1 = TWorldCountry.objects.create(wr_id=bigtmp, logo=full[0], coordX=0, coordY=0)
            x1.save()
            x2 = TWorldCountryTr.objects.create(wc_id=x1, langcode=local, wc_name=full[1])
            x2.save()
            x3 = TWorldCity.objects.create(wc_id=x1, coordX=0, coordY=0)
            x3.save()
            x4 = TWorldCityTr.objects.create(wcity_id=x3, langcode=local, wcity_name=full[2])
            x4.save()
        full = []
    return HttpResponse('')


def news(request, page=1, path=0):
    lang_code = request.LANGUAGE_CODE
    path = int(path)
    cpath = TPathTr.objects.filter(langcode=lang_code).select_related('cp_id')
    content = TContentArticleTr.objects.filter(langcode=lang_code).select_related('ca_id__author')
    if int(path) > 0:
        ppath = [path]
        try:
            if TPath.objects.get(cp_id=path).path_id is None:
                for xx in TPath.objects.filter(path_id=path).values_list('cp_id', flat=True):
                    ppath.append(xx)
        except:
            pass
        ek = []
        for rec in content:
            ek.append(rec.ca_id.cp_id_id)
        content = content.filter(ca_id__cp_id_id__in=ppath)
    page = int(page)

    count = content.count()
    if count % 10 == 0:
        pg = count / 10
    else:
        pg = count / 10 + 1
    pages = []
    if page <= 0 or page > pg:
        pages = [1]
    else:
        if page > 2:
            pages = [page-2, page-1]
        elif page > 1:
            pages = [page-1]
        pages.append(page)
        diff = pg - page
        if diff >= 2:
            pages.append(page+1, page+2)
        elif diff >= 1:
            pages.append(page+1)
    content = list(content[(page-1)*1:page*10-1])
    return render(request, 'news/news.html', {'news': True, 'cpath': cpath, 'page': page, 'content': content,
                                              'pages': pages, 'path': path},
                  context_instance=RequestContext(request))


def news_search(request, page=1):
    lang_code = request.LANGUAGE_CODE
    page = int(page)
    path = 0
    if request.method == 'POST' and 'search_news' in request.POST:
        cpath = TPathTr.objects.filter(langcode=lang_code).select_related('cp_id')
        content = TContentArticleTr.objects.filter(langcode=lang_code).select_related('ca_id__author')
        qstring = request.POST['search_news'].strip()
        content = content.filter(Q(ca_name__icontains=qstring) | Q(content__icontains=qstring))
        count = content.count()
        if count % 10 == 0:
            pg = count / 10
        else:
            pg = count / 10 + 1
        pages = []
        if page <= 0 or page > pg:
            pages = [1]
        else:
            if page > 2:
                pages = [page-2, page-1]
            elif page > 1:
                pages = [page-1]
            pages.append(page)
            diff = pg - page
            if diff >= 2:
                pages.append(page+1, page+2)
            elif diff >= 1:
                pages.append(page+1)
        content = list(content[(page-1)*1:page*10-1])
        return render(request, 'news/news.html', {'news': True, 'cpath': cpath, 'page': page, 'content': content,
                                                  'pages': pages, 'path': path,
                                                  'post': request.POST['search_news'].strip()},
                      context_instance=RequestContext(request))
    else:
        return HttpResponseRedirect('/news/')