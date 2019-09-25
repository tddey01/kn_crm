#!/usr/bin/env  python3
# -*- coding: UTF-8 -*-
from django import forms
from django.core.exceptions import ValidationError
from django.utils.safestring import mark_safe
from django.conf.urls import url
from django.shortcuts import HttpResponse, render, redirect
from django.http import QueryDict
from django.urls import reverse
from stark.service.v1 import site, StarkHandler, get_choice_text, StarkModelForm, StarkForm, Option
from web import models
from web.utils.md5 import gen_md5
