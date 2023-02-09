FROM ubuntu:20.04

RUN apt update && apt install nginx -y
RUN apt install systemctl -y 
RUN systemctl start nginx


 