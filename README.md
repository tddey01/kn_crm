# kn_crm
```bash
pip freeze > requirements.txt 环境安装导出模块
项项目环境  安装
pip install -r requirements.txt
```
---
### django 2.2.5 数据库数据备份及恢复数据

#### 备份
```bash
备份莫一个APP
python manage.py dumpdata app_name --format=json > app.json

备份整个db
python manage.py dumpdata --format=json > bak.json
```

#### 2.恢复
```bash
python manage.py loaddata app.json
```
---
#### django 自动数据库数据备份脚本
```bash
#!/usr/bin/env bash
backup=/root/djangobackup
projectname=mysite
dirname=/root/mysite

if [ $UID -ne 0 ]; then
    echo "backup fail,please using root again" | mail "sorry,backup fail" 200922702@qq.com
    sleep 2 exit 0
fi
cd ${dirname};

python3 manage.py dumpdata --format=json > ${backup}/${projectname}-`date +%Y-%m-%d`.json

cd ${backup} && tar czvf ${projectname}-`date +%Y-%m-%d`.json.tar.gz *.json
find ${backup} -type f -name "*.json" -exec rm -rf {} \;

if [ $? -eq 0 ]; then
    echo "backup ${projectname}-`date +%Y-%m-%d` successful" | mail "backup success" 200922702@qq.com
else
    echo "backup ${projectname}-`date +%Y-%m-%d` fail" | mail "sorry,backup fail" 200922702@qq.com
fi

find ${backup} -type f -mtime +30 | xargs rm -rf
```