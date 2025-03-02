FROM python:3.9.6-slim

ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    python3-dev \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    python3-venv \
    python3-pip \
    python3-dev \
    libssl-dev \
    libffi-dev

WORKDIR /app

ADD . /app

RUN pip install -r requirements.txt