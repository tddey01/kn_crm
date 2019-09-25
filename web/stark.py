#!/usr/bin/env python
# -*- coding:utf-8 -*-

from stark.service.v1 import site
from web import models




from web.views.school import SchoolHandler
site.register(models.School, SchoolHandler)




from web.views.department import DepartmentHandler
site.register(models.Department, DepartmentHandler)




from web.views.userinfo import UserInfoHandler
site.register(models.UserInfo, UserInfoHandler)



from web.views.course import CourseHandler
site.register(models.Course,CourseHandler)

from web.views.classList import ClasslistHandler
site.register(models.ClassList,ClasslistHandler)