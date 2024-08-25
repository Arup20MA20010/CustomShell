FROM ubuntu:22.04
RUN apt-get update && apt-get install -y gcc-9 make vim

WORKDIR /usr/src/shellapp

COPY . /usr/src/shellapp



