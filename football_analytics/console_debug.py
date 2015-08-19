# -*- coding: utf-8 -*-

import traceback
import sys
import datetime


class ProcessExceptionMiddleware(object):
    def process_exception(self, request, exception):
        sys.stderr.write('----!!!ERROR FOOTBALL!!!----\n')
        sys.stderr.write(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S\n'))
        sys.stderr.write('\n'.join(traceback.format_exception(*sys.exc_info())))
        sys.stderr.write(u'\nPATH_INFO: \'{0}\'\n'.format(request.META['PATH_INFO']))
        sys.stderr.write('\n----!!!ERROR!!!----\n')
