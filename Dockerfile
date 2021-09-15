FROM jenkins/inbound-agent:latest-alpine

USER root
RUN cat /etc/os-release

RUN apk update && \
    apk add terraform unzip curl python3 py3-pip

USER jenkins
