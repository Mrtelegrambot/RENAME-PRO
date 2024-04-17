
FROM python:latest

WORKDIR /app

COPY requirements.txt /app/

RUN apt update && apt upgrade -y
RUN apt install git python3-pip ffmpeg -y

COPY . .

COPY . /app

CMD python3 bot.py
