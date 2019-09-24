#!/usr/bin/env python3
# -*- coding:utf-8 -*-
from stark.service.v1 import site, StarkHandler
from web import models


class SchoolHandler(StarkHandler):
    # list_display = ['title',StarkHandler.display_edit,StarkHandler.display_del]
    list_display = ['title',]


site.register(models.School, SchoolHandler)
