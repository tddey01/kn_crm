#!/usr/bin/env  python3
# -*- coding: UTF-8 -*-


from stark.service.v1 import site, StarkHandler


class SchoolHandler(StarkHandler):
    list_display = ['title']

