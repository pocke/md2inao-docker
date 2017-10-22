FROM ubuntu:xenial-20170802

ENV DEBIAN_FRONTEND=noninteractive
RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.iij.ad.jp/pub/linux/ubuntu/archive/%g" /etc/apt/sources.list
RUN apt-get update -y && \
    apt-get dist-upgrade -y && \
    apt-get install -y curl libextutils-makemaker-cpanfile-perl make gcc && \
    rm -rf /var/lib/apt/lists/*
RUN curl -L http://cpanmin.us | perl - Text::Md2Inao
