FROM node

RUN npm install -g elm@0.17

ADD https://github.com/avh4/elm-format/releases/download/0.4.0-alpha/elm-format-0.17-0.4.0-alpha-linux-x64.tgz /root/

RUN tar zxvf /root/elm-format-0.17-0.4.0-alpha-linux-x64.tgz -C /usr/local/bin

ENV LANG en_US.UTF-8

WORKDIR /app
