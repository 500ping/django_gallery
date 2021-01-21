FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y python3-pip python3-dev libpq-dev \
    && pip3 install --upgrade pip

FROM python:3.7.5-slim
ENV PYTHONUNBUFFERED=1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/

