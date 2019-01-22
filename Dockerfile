FROM python:3.7-alpine

MAINTAINER Chris Modjeska <chris@remuria.net>

RUN apk update \
  && apk add --virtual build-deps gcc python3-dev musl-dev \
  && apk add postgresql-dev git openssh-client \
  && pip install psycopg2 pipenv \
  && apk del build-deps