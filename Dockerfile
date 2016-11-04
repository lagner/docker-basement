FROM ubuntu:16.04

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y \
        cowsay

ENV worker batman
ENV workdir /basement

RUN useradd -s /bin/bash -d ${workdir} ${worker}

USER ${worker}
WORKDIR ${workdir}

COPY entrypoint.sh /usr/local/bin/entrypoint
