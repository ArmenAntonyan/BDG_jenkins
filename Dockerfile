FROM ubuntu:latest
USER root
RUN apt update
RUN apt install nginx -y 
RUN apt install systemctl -y
#RUN systemctl status nginx
RUN systemctl start nginx
CMD ["nginx", "-g", "daemon off;"]

 