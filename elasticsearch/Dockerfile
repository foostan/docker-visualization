FROM ubuntu:trusty

MAINTAINER foostan ks@fstn.jp

RUN apt-get update && apt-get -y install wget openjdk-7-jre-zero

RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.1.tar.gz
RUN tar -xvf elasticsearch-1.4.1.tar.gz

EXPOSE 9200
ENTRYPOINT elasticsearch-1.4.1/bin/elasticsearch
