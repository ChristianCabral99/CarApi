FROM python:3.8
LABEL Alfredo Bolio

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

#RUN adduser --disabled-password  user
#USER user

RUN useradd -ms /bin/bash newuser
USER newuser
