# airsonic

Ubuntu 16.04

apt-get install openjdk-8-jre -y
sudo update-alternatives --config java
java -version
cd /var/opt
wget https://raw.githubusercontent.com/irtec/airsonic/master/apache-tomcat-8.5.38.tar.gz
tar -xzvf apache-tomcat-8.5.38.tar.gz
rm apache-tomcat-8.5.38.tar.gz
cd apache-tomcat-8.5.38
cd ..
chmod +755 -R apache-tomcat-8.5.38
cd apache-tomcat-8.5.38
cd webapps
wget https://master.dl.sourceforge.net/project/restream/airsonic.war
cd ..
cd bin
./startup.sh



start tomcat-8
/var/opt/apache-tomcat-8.5.38/bin/startup.sh
