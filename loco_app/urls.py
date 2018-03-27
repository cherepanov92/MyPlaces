# -*- coding: utf-8 -*-
from django.conf.urls import url
from .views import *

__author__ = "https://github.com/Biowulf513"
__email__ = "cherepanov92@gmail.com"


urlpatterns = [
    url(r'^$', statistics),
    ]
