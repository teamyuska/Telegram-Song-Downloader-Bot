FROM python:3.9.6-buster

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update -y && apt-get -qq upgrade -y
RUN apt-get -qq install -y \
    git \
    curl \
    wget \
    ffmpeg \
    opus-tools


RUN pip3 install -U -r requirements.txt
