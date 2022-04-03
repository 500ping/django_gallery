FROM python:3.7.5-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app

RUN apt-get update \
    && apt-get install -y netcat \
    && apt-get install -y python3-pip python3-dev libpq-dev \
    && pip3 install --upgrade pip \
    && pip install -r requirements.txt

# copy entrypoint.sh
COPY ./entrypoint.sh /app
RUN sed -i 's/\r$//g' /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

COPY . /app

# run entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
