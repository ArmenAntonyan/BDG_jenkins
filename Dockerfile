FROM ubuntu:latest
USER root
RUN apt update && apt install nginx -y
CMD [ "service nginx start" ]


 