FROM node:6-slim
MAINTAINER Rodrigue Villetard <rodrigue.villetard@gmail.com>

RUN npm install --global \
    elm@0.18 \
    elm-live \
    elm-upgrade \
    elm-test

ADD https://github.com/avh4/elm-format/releases/download/0.5.2-alpha/elm-format-0.18-0.5.2-alpha-linux-x64.tgz /root/
RUN tar zxvf /root/elm-format-0.18-0.5.2-alpha-linux-x64.tgz -C /usr/local/bin

ENV LANG en_US.UTF-8
ENV TERM xterm-256color

WORKDIR /app
