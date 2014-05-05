FROM ubuntu:12.04
MAINTAINER Ben Firshman "ben@firshman.co.uk"
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install python-software-properties
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get -y install nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ADD default /etc/nginx/sites-available/default
ADD run /usr/local/bin/run

EXPOSE 80
CMD ["/usr/local/bin/run"]

