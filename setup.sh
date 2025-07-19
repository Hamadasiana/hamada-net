#!/bin/bash

# تحديث النظام
apt update && apt upgrade -y

# تثبيت الأدوات المطلوبة
apt install -y wget screen

# تحميل السكربت الرئيسي
wget -q https://raw.githubusercontent.com/Hamadasiana/hamada1/main/main.sh -O main.sh

# إعطاء صلاحية التنفيذ
chmod +x main.sh

# تشغيله داخل screen مع تسجيل المخرجات
screen -dmS install bash -c "./main.sh | tee /root/log.txt"
