FROM node:6
MAINTAINER Rodrigue Villetard <rodrigue.villetard@gmail.com>

RUN npm install --global \
    create-elm-app \
    elm@0.19 \
    elm-format@exp \
    elm-live \
    elm-test \
    elm-upgrade

ENV LANG en_US.UTF-8
ENV TERM xterm-256color

WORKDIR /app
