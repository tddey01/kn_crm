#!/usr/bin/env  python3
# -*- coding: UTF-8 -*-
from stark.service.v1 import  StarkHandler
from .base import PermissionHandler

class DepartmentHandler(PermissionHandler,StarkHandler):
    list_display = ['title', ]