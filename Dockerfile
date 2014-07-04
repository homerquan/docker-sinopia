FROM ubuntu:14.04

MAINTAINER Homer Quan <support@homerquan.com>

RUN apt-get -y update && apt-get -y -q install curl && apt-get -y -q clean
RUN curl -o ~/node.tar.gz http://nodejs.org/dist/v0.10.29/node-v0.10.29-linux-x64.tar.gz
RUN cd /usr/local && tar --strip-components 1 -xzf ~/node.tar.gz && rm ~/node.tar.gz
RUN npm i sinopia -g
ADD config.yaml /home/sinopia/config.yaml
RUN mkdir storage
RUN adduser --disabled-password --gecos "" sinopia
RUN chown sinopia storage
USER sinopia
EXPOSE 4873
CMD ["/usr/local/bin/sinopia"]
