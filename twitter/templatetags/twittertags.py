from __future__ import division
from django import template

register = template.Library()


@register.filter("multi")
def multi(val, key):
    return format(val*key, '.4g')


@register.filter("dev")
def dev(val, key):
    x = format(val/key, '.4g')
    if x > 1:
        x = 1
    return x
