FROM ubuntu:trusty

MAINTAINER foostan ks@fstn.jp

RUN apt-get update && apt-get -y install curl

# install td-agent & plugins
RUN curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh
RUN td-agent-gem install fluent-plugin-docker-metrics -v 0.0.2

# set config
ADD td-agent.conf.rb /etc/td-agent/
ENV SEND_TIMEOUT       60s
ENV RECOVER_WAIT       10s
ENV HEARTBEAT_INTERVAL 1s
ENV PHI_THRESHOLD      16
ENV HARD_TIMEOUT       60
ENV SERVER_WEIGHT      60

ENTRYPOINT td-agent -c /etc/td-agent/td-agent.conf.rb
