FROM debian:buster

RUN apt-get update -y -q && \
apt-get install software-properties-common dirmngr -y && \
add-apt-repository "deb http://ppa.launchpad.net/webupd8team/java/ubuntu yakkety main" && \
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 && \
apt-get update -y -q && \
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
apt-get install oracle-java8-installer -y -q && \
#apt-get install oracle-java8-set-default -y && \
rm -rf /var/lib/apt/lists/*

