FROM ubuntu:bionic

RUN apt-get update && apt-get install -y wget gnupg
RUN wget -q https://sensu.global.ssl.fastly.net/apt/pubkey.gpg -O- | apt-key add -
RUN echo "deb     https://sensu.global.ssl.fastly.net/apt bionic main" | tee /etc/apt/sources.list.d/sensu.list
RUN apt-get update && apt-get install -y sensu

COPY entry.sh /

ENTRYPOINT /entry.sh
