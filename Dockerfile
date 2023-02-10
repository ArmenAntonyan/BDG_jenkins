FROM ubuntu:latest

RUN apt-get update && apt-get install nginx -y

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

 