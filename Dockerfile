FROM node:wheezy

RUN cat /etc/apt/sources.list
RUN echo 'deb http://httpredir.debian.org/debian/ jessie main' >> /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y --no-install-recommends libcairo2-dev libjpeg62-turbo-dev libpango1.0-dev libgif-dev build-essential g++

RUN apt-get autoclean -y
RUN apt-get autoremove -y
