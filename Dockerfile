FROM ubuntu:focal
ENV DEBIAN_FRONTEND="noninteractive" TZ="Asia/Hong_Kong"
WORKDIR /aprs
RUN rm -rf /etc/apt/sources.list && \
    echo "deb [arch=armhf] http://mirrors.ustc.edu.cn/ubuntu-ports/ focal main restricted universe multiverse" >> /etc/apt/sources.list && \
    echo "deb [arch=armhf] http://mirrors.ustc.edu.cn/ubuntu-ports/ focal-updates main restricted universe multiverse" >> /etc/apt/sources.list && \
    echo "deb [arch=armhf] http://mirrors.ustc.edu.cn/ubuntu-ports/ focal-backports main restricted universe multiverse" >> /etc/apt/sources.list && \
    apt-get update -y && apt-get upgrade -y && \
    apt-get install direwolf rtl-sdr -y