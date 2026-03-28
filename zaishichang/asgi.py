"""
ASGI config for student_status_django project.

It exposes the ASGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/5.0/howto/deployment/asgi/
"""

import os

from django.core.asgi import get_asgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'zaishichang.settings')

application = get_asgi_application()

from whitenoise import WhiteNoise


application = WhiteNoise(application, root=r"D:\我的文件\勤学智智\闲鱼\004再市场\004二手商场-再市场\咸鱼-再市场\Python\zaishichang\static")

# application.add_files("/path/to/more/static/files", prefix="more-files/")
