FROM ubuntu:14.04.3
MAINTAINER comesx4 <comesx4@gmail.com>

RUN apt-get update && \
    apt-get install -y python-pip
RUN pip install shadowsocks==2.8.2

ENV SERVER_ADDR 0.0.0.0
ENV SERVER_PORT 81
ENV PASSWORD password
ENV METHOD aes-256-cfb
ENV TIMEOUT 300

ADD run.sh /run.sh
RUN chmod 755 /run.sh

EXPOSE $SERVER_PORT

CMD ["sh", "-c", "/run.sh"]
