FROM node:19-buster

ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8

ARG ARCHIVE_URL=https://github.com/kosmtik/kosmtik/archive/6fbf71.tar.gz

RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends curl libmapnik-dev

USER node
WORKDIR /kosmtik
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN curl -L $ARCHIVE_URL | tar -xvz --strip-components=1 \
    && npm install \
    && node index.js plugins --install kosmtik-fetch-remote

