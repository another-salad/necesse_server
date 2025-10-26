FROM ubuntu:latest

RUN apt-get update && \
    apt-get install software-properties-common -y && \
    add-apt-repository multiverse && \
    dpkg --add-architecture i386 && \
    apt-get update && \
    echo steam steam/question select "I AGREE" | debconf-set-selections && \
    echo steam steam/license note '' | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y steamcmd && \
    apt-get clean autoclean && \
    apt-get autoremove -y

RUN mkdir necesse_server

ENV PATH="$PATH:/usr/games"

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash", "/entrypoint.sh"]
