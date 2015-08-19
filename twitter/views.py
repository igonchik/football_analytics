# -*- coding: utf-8 -*-
from django.shortcuts import render
from datetime import datetime
from twython import Twython
from football_analytics.settings import SECRET_KEY
from football_analytics.settings import KEY
from django.utils.translation import ugettext_lazy as _
from models import *
from django.utils import translation
from django.utils.translation import check_for_language
from django.http import HttpResponseRedirect
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
    last_id = 1
    if last_id != 0:
        try:
            user_timeline = twitter.get_user_timeline(screen_name=author.name, since_id=last_id)
        except:
            user_timeline = twitter.get_user_timeline(screen_name=author.name)
            for rec in user_timeline:
                if int(rec['id_str']) >= last_id:
                    last_id = last_id
                    break
            user_timeline = twitter.get_user_timeline(screen_name=author.name, since_id=last_id)
    else:
        user_timeline = twitter.get_user_timeline(screen_name=author.name)
    msg = []
    for rec in user_timeline:
        hashtags = []
        for ht in rec['entities']['hashtags']:
            hashtags.append(ht['text'])
        try:
            msg.append([int(rec['id_str']), rec['text'], hashtags,
                        datetime.strptime(rec['created_at'], '%a %b %d %H:%M:%S %z %Y')])
        except:
            if '+' in rec['created_at']:
                msg.append([int(rec['id_str']), rec['text'], hashtags,
                            datetime.strptime('{0}{1}'.format(rec['created_at'][:len(rec['created_at'])-11],
                                                              rec['created_at'][len(rec['created_at'])-5:]),
                                              '%a %b %d %H:%M:%S %Y') +
                            _datetime.timedelta(hours=int(rec['created_at'][len(rec['created_at'])-9:
                            len(rec['created_at'])-7]),
                                                minutes=int(rec['created_at'][len(rec['created_at'])-7:
                                                len(rec['created_at'])-5]))])
            else:
                msg.append([int(rec['id_str']), rec['text'], hashtags,
                            datetime.strptime('{0}{1}'.format(rec['created_at'][:len(rec['created_at'])-11],
                                                              rec['created_at'][len(rec['created_at'])-5:]),
                                              '%a %b %d %H:%M:%S %Y') -
                            _datetime.timedelta(hours=int(rec['created_at'][len(rec['created_at'])-9:
                            len(rec['created_at'])-7]),
                                                minutes=int(rec['created_at'][len(rec['created_at'])-7:
                                                len(rec['created_at'])-5]))])
        tweet = TTweetsTweet(tt_id=msg[-1][0], ta_id=author, text=msg[-1][1], created_at=msg[-1][3])
        tweet.save()
        predicates = []
        for word in hashtags:
            predicates.append(('th_id__hashtag', word.upper()))
            obj = TTweetsHashTag.objects.get_or_create(hashtag=word.upper())
            TTweetsTweetHashTag(th_id=obj, tt_id=tweet).save()
        for word in tweet.text:
            predicates.append(('th_id__hashtag', word.upper()))
        q_list = [Q(x) for x in predicates]
        fc = TTweetsClubHashTag.objects.select_related('th_id').filter(reduce(or_, q_list)).values_list('fc_id_id')
        fp = TTweetsPlayerHashTag.objects.select_related('th_id').filter(reduce(or_, q_list)).values_list('fp_id_id')
        for fc_rec in fc:
            tclubtweet = TTweetsClubTweetRel(fc_id_id=int(fc_rec), tt_id=tweet)
            tclubtweet.save()
        for fp_rec in fp:
            tplayertweet = TTweetsPlayerTweetRel(fp_id_id=int(fp_rec), tt_id=tweet)
            tplayertweet.save()


def index(request):
    """
        Главная страница
    """
    #auth = twitter.get_authentication_tokens()
    return render(request, 'main.html', {}, context_instance = RequestContext(request))