sudo gedit /etc/hostname #Дать удобные имена своим подчиненным машинам, я дал им имена 2VM. Сохранить изменения и перезагрузить машины.
sudo gedit /etc/hosts #добавить ip мастера и свой
sudo addgroup hadoop
sudo adduser --ingroup hadoop hduser
sudo usermod -a -G sudo hduser﻿
#Установить JAVA на каждой из машин:
sudo apt install openjdk-8-jdk-headless
sudo apt install openjdk-8-jre-headless

sudo apt install openssh-server #Вводим пароль да ubuntu

#Установить утилиту rsync на каждой из машин:
sudo apt-get install rsync
sudo reboot
