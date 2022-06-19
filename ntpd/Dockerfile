FROM --platform=linux/x86_64 ubuntu:20.04

RUN apt-get update
RUN apt-get install -y locales
RUN apt-get update
RUN apt-get install -y vim curl tmux

RUN yes | unminimize
RUN locale-gen ja_JP.UTF-8

# RUN sh -c 'echo "Asia/Tokyo" > /etc/timezone'
# RUN echo "Asia/Tokyo" > /etc/timezone
# RUN dpkg-reconfigure -f noninteractive tzdata

#
# env
#
ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo
ENV HOME=/home

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR $HOME/

#
# NTPd の設定
#
RUN apt-get install -y ntp
COPY ./ntp.conf /etc/ntp.conf
RUN echo 'Starting ntpd..'

# NTPポート
EXPOSE 123/udp

RUN /usr/sbin/ntpd restart