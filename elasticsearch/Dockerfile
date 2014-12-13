FROM ubuntu:trusty

MAINTAINER foostan ks@fstn.jp

RUN apt-get update

## install elasticsearch
RUN apt-get -y install wget openjdk-7-jre-zero
RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.1.tar.gz
RUN tar -xvf elasticsearch-1.4.1.tar.gz

## install kibana3 as elasticsearch plugin
RUN elasticsearch-1.4.1/bin/plugin -url http://download.elasticsearch.org/kibana/kibana/kibana-latest.zip -install elasticsearch/kibana3

EXPOSE 9200
ENTRYPOINT elasticsearch-1.4.1/bin/elasticsearch
