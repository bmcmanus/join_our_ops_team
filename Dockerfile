FROM ubuntu:14.04
RUN \
  apt-get update && \
  apt-get --yes upgrade && \
  apt-get --yes install ubuntu-keyring  && \
  apt-get install nginx -y && \
  apt-get install vim -y

RUN sed -i '2idaemon off;' /etc/nginx/nginx.conf
RUN sed -ri 's/pid \/run\/nginx.pid;/pid \/var\/run\/nginx.pid;/g' /etc/nginx/nginx.conf
ADD . /
