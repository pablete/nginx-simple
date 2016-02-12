FROM phusion/baseimage:latest
MAINTAINER Pablo Delgado "pdelgado@opentable.com"

RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62
RUN echo "deb http://nginx.org/packages/mainline/ubuntu/ trusty nginx" >> /etc/apt/sources.list

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git curl uuid-runtime
RUN rm -rf /etc/service/syslog-ng /etc/my_init.d/00_regen_ssh_host_keys.sh
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD nginx  /etc/service/nginx
RUN rm -rf /usr/share/nginx/html/*
ADD sites/ /usr/share/nginx/html

EXPOSE 80

# Define default command.
CMD ["/sbin/my_init"]
