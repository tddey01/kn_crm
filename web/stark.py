#!/usr/bin/env python
# -*- coding:utf-8 -*-
from stark.service.v1 import site
from web import models


from web.views.school import SchoolHandler
site.register(models.School, SchoolHandler)

from web.views.depart import DepartmentHandler
site.register(models.Department, DepartmentHandler)

from web.views.userinfo import UserInfoHandler
site.register(models.UserInfo, UserInfoHandler)

from web.views.course import CourseHandler
site.register(models.Course, CourseHandler)

from web.views.class_list import ClassListHandler
site.register(models.ClassList, ClassListHandler)

from web.views.public_customer import PublicCustomerHandler
site.register(models.Customer, PublicCustomerHandler, 'pub')

from web.views.private_customer import PrivateCustomerHandler
site.register(models.Customer, PrivateCustomerHandler, 'priv')

from web.views.consult_record import ConsultRecordHandler
site.register(models.ConsultRecord, ConsultRecordHandler)
