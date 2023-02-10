FROM nginx
RUN apt-get update
COPY ./index.html /var/www/html/
