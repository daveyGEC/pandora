FROM python:3.14.0a1-slim

MAINTAINER "Neo Peng <pengzhile@gmail.com>"

VOLUME /data

WORKDIR /opt/app

ADD . .

RUN pip --no-cache-dir install --upgrade pip && pip --no-cache-dir install .[api,cloud]

ENTRYPOINT ["bin/startup.sh"]
