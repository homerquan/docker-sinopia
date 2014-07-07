FROM ubuntu:14.04

MAINTAINER Homer Quan <support@homerquan.com>

RUN apt-get -y update && apt-get -y -q install curl && apt-get -y -q clean
RUN apt-get install -q -y ssh nodejs npm git && apt-get clean
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm i sinopia -g
ADD config.yaml config.yaml
RUN mkdir storage
RUN adduser --disabled-password --gecos "" sinopia
RUN chown sinopia storage
USER sinopia
EXPOSE 4873
ENTRYPOINT ["/usr/local/bin/sinopia"]
