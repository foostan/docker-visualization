FROM ubuntu:trusty

MAINTAINER foostan ks@fstn.jp

RUN apt-get update

## install td-agent
RUN apt-get -y install curl
RUN curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh

## install fluent-plugin-elasticsearch
RUN apt-get -y install libcurl4-openssl-dev gcc make
RUN td-agent-gem install fluent-plugin-elasticsearch

## install fluent-plugin-docker-metrics
RUN td-agent-gem install fluent-plugin-docker-metrics

## setup config
ADD td-agent.conf.rb /etc/td-agent/
ENV ELASTICSEARCH_HOST elasticsearch
ENV ELASTICSEARCH_PORT 9200

ENTRYPOINT td-agent -c /etc/td-agent/td-agent.conf.rb
