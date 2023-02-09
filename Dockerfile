FROM ubuntu:20.04

RUN apt update && apt install nginx -y
# drop back to the regular jenkins user - good practice

