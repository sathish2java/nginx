ARG VERSION=16.04

FROM ubuntu:${VERSION}

RUN apt-get update && apt-get install -y curl nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /test-dir

ENV USER Dhwani 
ENV SHELL /bin/bash

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
