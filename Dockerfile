FROM python:3.6.0-alpine
MAINTAINER Eric Thiel <erthiel@cisco.com>

RUN apk add --no-cache python3 bash git openssh gcc linux-headers musl-dev libffi-dev openssl-dev libxml2-dev libxslt-dev && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache

COPY requirements.txt .
RUN pip install -r requirements.txt
