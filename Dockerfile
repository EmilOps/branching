# syntax=docker/dockerfile:1
FROM amazonlinux:latest

COPY ./requirements.txt /tmp/requirements.txt

RUN yum -y update &&\
    amazon-linux-extras install python3 &&\
    python3 -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    rm -rf /tmp

CMD ["echo", "Hello World!"]
