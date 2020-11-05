FROM ubuntu:20.04

# LABEL about the custom image
LABEL maintainer="juergenbr"
LABEL version="0.1"
LABEL description="This is docker container for hosting Telegram Bot API locally based on Ubuntu 20.04"

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install make git zlib1g-dev libssl-dev gperf cmake g++
RUN git clone --recursive https://github.com/tdlib/telegram-bot-api.git
WORKDIR telegram-bot-api
RUN rm -rf build
RUN mkdir build
WORKDIR build
RUN export CXXFLAGS=""
RUN cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=.. ..
RUN cmake --build . --target install