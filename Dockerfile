FROM ubuntu:20.04

RUN apt-get update && apt-get install nginx -y
# drop back to the regular jenkins user - good practice

