#!/bin/sh
# Скрипт для равзёртки hadoop
sudo apt install openjdk-8-jdk-headless
sudo apt install openjdk-8-jre-headless
sudo update-alternatives --config java
sudo addgroup hadoop
sudo adduser --ingroup hadoop hduser
sudo su hduser
su ilhom
sudo gedit hadoop /etc/sudoers
sudo apt-get install openssh-server
sudo su hduser
ssh-keygen -t rsa -P ""
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys
wget apache-mirror.rbc.ru/pub/apache/hadoop/common/hadoop-3.3.0/hadoop-3.3.0.tar.gz
sudo tar -xzvf hadoop-3.3.0.tar.gz
sudo mv hadoop-3.3.0 /usr/local/hadoop/hadoop-3.3.0
sudo mkdir -p /usr/local/hadoop/hadoop_tmp/hdfs/namenode
sudo mkdir -p /usr/local/hadoop/hadoop_tmp/hdfs/datanode
sudo chown hduser:hadoop -R /usr/local/hadoop/
cd
sudo gedit .bashrc

