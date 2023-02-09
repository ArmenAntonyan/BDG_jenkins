FROM ubuntu:20.04

RUN apt update && apt install nginx -y && apt install systemctl -y 
RUN systemctl start nginx
# drop back to the regular jenkins user - good practice

