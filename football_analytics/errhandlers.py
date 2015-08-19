from django.shortcuts import render_to_response


def error403(request):
    return render_to_response('__localization__/../templates/globerror.html', {'errno': 403})


def error500(request):
    return render_to_response('__localization__/../templates/globerror.html', {'errno': 500})


def failure(request, reason=""):
    return render_to_response('__localization__/../templates/csrf.html')
