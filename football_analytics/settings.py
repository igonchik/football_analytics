import os
#DEBUG = False
#TEMPLATE_DEBUG = False

DEBUG = True
TEMPLATE_DEBUG = True

SERVER_ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), os.pardir))

ADMINS = [
    ("admin", "igonchik@gmail.com"),
]

MANAGERS = ADMINS

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'OPTIONS': {
            'read_default_file': os.path.join(SERVER_ROOT, 'db.cnf'),
        },
    }
}

ALLOWED_HOSTS = [
    '127.0.0.1:8000'
]

ugettext = lambda s: s
LANGUAGES = (
    ('en', ugettext('English')),
    ('ru', ugettext('Russian')),
)
TIME_ZONE = 'Europe/Moscow'
LANGUAGE_CODE = 'ru_RU.utf8'
SITE_ID = 1
USE_I18N = True
USE_L10N = True
USE_TZ = False
KEY = 'egsdasddaasgfbxbvbvc3423r23%%$Fv'
SECRET_KEY = '2$5y2y7dylasw1#ut4i%*h0b4m+-!n1arv61b&amp;96t)lix+!q+r'

CSRF_COOKIE_NAME = 'bro'
CSRF_COOKIE_AGE = 86400
CSRF_FAILURE_VIEW = 'football_analytics.errhandlers.csrf_failure'

TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
)

MIDDLEWARE_CLASSES = (
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'football_analytics.console_debug.ProcessExceptionMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
)

LOCALE_PATHS = (
    os.path.join(SERVER_ROOT, 'locale/'),
)
LANGUAGE_COOKIE_NAME = 'curlang'

X_FRAME_OPTIONS = 'DENY'
ROOT_URLCONF = 'football_analytics.urls'
TEMPLATE_CONTEXT_PROCESSORS = (
    'football_analytics.config.globs',
    'django.core.context_processors.i18n',
)

TEMPLATE_DIRS = (
    os.path.join(SERVER_ROOT, 'templates/'),
)
STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
)

MEDIA_ROOT = os.path.join(SERVER_ROOT, 'static/medialib/')
MEDIA_URL = '/medialib/'
STATIC_ROOT = os.path.join(SERVER_ROOT, 'static_medialib/static/')
STATIC_URL = '/static/'
STATICFILES_DIRS = (os.path.join(SERVER_ROOT, 'static/static/'), )

INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'twitter',
)

LOGIN_URL = '/login/'

LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'filters': {
        'require_debug_false': {
            '()': 'django.utils.log.RequireDebugFalse'
        }
    },
    'handlers': {
        'mail_admins': {
            'level': 'ERROR',
            'filters': ['require_debug_false'],
            'class': 'django.utils.log.AdminEmailHandler'
        }
    },
    'loggers': {
        'django.request': {
            'handlers': ['mail_admins'],
            'level': 'ERROR',
            'propagate': True,
        },
    }
}

#EMAIL_HOST = 'x'
#EMAIL_PORT = '25'
#SERVER_EMAIL = 'x'
