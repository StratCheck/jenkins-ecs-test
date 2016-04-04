FROM ubuntu:14.04

# Install dependencies
RUN apt-get update
RUN apt-get install -y python-pip python-dev
RUN pip install flask

ADD . /app
WORKDIR /app

EXPOSE 5000

CMD ["/usr/bin/python", "app.py"]
