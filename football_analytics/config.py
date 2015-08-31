# -*- coding: utf-8 -*-
import time
from datetime import datetime


#Интервал запроса изменений с сервера в мс
UPDATE_CHECK_TIMEOUT = 30000

AUTHOR_ON_PAGE = 3

#Интервал показа графики на карте
MAP_TIMEOUT = 4320000


def getTime():
    millis = int(round(time.time() * 1000))
    return millis


def globs(request):
    from settings import ALLOWED_HOSTS
    from settings import ADMINS

    hosts = ALLOWED_HOSTS
    admin = ADMINS[0][1]
    settings = {'allowed_hosts': hosts, 'admin_mail': admin}

    return settings
