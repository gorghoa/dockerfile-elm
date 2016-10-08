FROM node:6-slim

RUN npm install --global elm@0.17 elm-live

ADD https://github.com/avh4/elm-format/releases/download/0.4.0-alpha/elm-format-0.17-0.4.0-alpha-linux-x64.tgz /root/

RUN tar zxvf /root/elm-format-0.17-0.4.0-alpha-linux-x64.tgz -C /usr/local/bin

ENV LANG en_US.UTF-8
ENV TERM xterm-256color

WORKDIR /app
