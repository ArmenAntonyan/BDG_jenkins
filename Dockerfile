FROM ubuntu:latest
USER root
RUN apt update && apt install nginx:latest -y
CMD ["nginx" "-g" "daemon off"]


 