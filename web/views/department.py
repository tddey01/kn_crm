#!/usr/bin/env  python3
# -*- coding: UTF-8 -*-
from stark.service.v1 import  StarkHandler


class DepartmentHandler(StarkHandler):
    list_display = ['title', ]