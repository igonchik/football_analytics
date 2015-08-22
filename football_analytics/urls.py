from django.conf.urls import patterns, include, url
from django.conf.urls.static import static
from football_analytics import settings


handler403 = 'football_analytics.errhandlers.error403'
handler404 = 'football_analytics.errhandlers.error403'
handler500 = 'football_analytics.errhandlers.error500'


urlpatterns = patterns('',
                       url(r'^lang/', 'twitter.views.set_language'),
                       url(r'^accounts/login/$', 'twitter.views.u_login'),
                       url(r'^accounts/logout/$', 'twitter.views.u_logout'),
                       url(r'^settings/$', 'twitter.views.setting_req'),
                       url(r'^settings/tauthor_recache/(?P<auth>\d+)/$', 'twitter.views.recache_photo'),
                       url(r'^settings/tauthor_recache/$', 'twitter.views.recache_photo'),
                       url(r'^settings/tauthor/remove/(?P<id>\d+)/$', 'twitter.views.remove_auth'),
                       url(r'^settings/tauthor/add/$', 'twitter.views.add_auth'),
                       url(r'^settings/tauthor/find/', 'twitter.views.get_author_from_url'),
                       url(r'^settings/tauthor/', 'twitter.views.setting_author'),
                       url(r'^$', 'twitter.views.index'),
                       ) + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) + \
                           static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
