FROM ubuntu:18.04
RUN apt-get update -qq && apt-get install -y mysql-server
RUN apt install -y python3-pip
EXPOSE 5000

WORKDIR /app

COPY . /app
RUN pip3 install -r /app/requirements.txt
CMD python3 /app/app.py


