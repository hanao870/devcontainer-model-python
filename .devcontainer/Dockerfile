FROM python:3.12.3

RUN apt-get update \
    && apt-get install -y --no-install-recommends rubygems ruby-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV TZ Asia/Tokyo