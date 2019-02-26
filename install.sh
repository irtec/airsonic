#!/bin/bash
# Original script by fornesia, rzengineer and fawzya
# # Mod by IRTech Network & Bustami Arifin
# ==================================================

echo " "
jeshile='\e[40;38;5;82m' #jeshile
jo='\e[0m' # pa ngjyra
os=$(exec uname -m|grep 64)
if [ "$os" = "" ]
then os="x86"
else os="x64"
fi
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │  Checking System Version  │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │   Detected a $os System   │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
apt-get install openjdk-8-jre -y
sudo update-alternatives --config java
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

echo " "
echo -e "${jeshile} ┌──────────────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │                  Installation Completed                  │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────────────────┘ \e[0m"
echo -e "${jeshile} ┌──────────────────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │[+] by IRTech Network                                     │ \e[0m"
echo -e "${jeshile} └──────────────────────────────────────────────────────────┘ \e[0m"
sleep 5
echo " "
