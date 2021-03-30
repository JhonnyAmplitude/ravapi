sudo su hduser
cd
sudo gedit masters #Указываем в файле имя мастера
sudo rm -rf /usr/local/hadoop/hadoop_tmp/
sudo mkdir -p /usr/local/hadoop/hadoop_tmp/hdfs/datanode
sudo chown hduser:hadoop -R /usr/local/hadoop/hadoop_tmp/
/usr/local/hadoop/hadoop-2.10.1/sbin/start-dfs.sh
/usr/local/hadoop/hadoop-2.10.1/sbin/start-yarn.sh
