FROM ubuntu:latest
USER root
RUN apt update && apt install nginx -y
RUN service nginx start


 