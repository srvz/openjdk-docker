FROM debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive

# `mkdir /usr/share/man/man1/` fix failed install openjdk-11-jdk-headless

RUN mkdir /usr/share/man/man1/ \
  && apt-get update \
  && apt-get install --no-install-recommends -y openjdk-11-jdk-headless \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
