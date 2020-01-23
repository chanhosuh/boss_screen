FROM python:3.7.0-slim

RUN apt-get update && apt-get install --no-install-recommends -y \
    nginx \
    supervisor \
    && \
    pip install --upgrade pip && \
    rm -rf /var/lib/apt/lists/*
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

