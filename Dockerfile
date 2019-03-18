FROM ubuntu:bionic
RUN apt-get update && \
apt-get install wget curl -y
RUN wget https://apt.puppet.com/puppet6-release-bionic.deb && \
    dpkg -i puppet6-release-bionic.deb && \
    apt-get update && \
    apt-get install puppet-bolt -y

ENTRYPOINT bolt