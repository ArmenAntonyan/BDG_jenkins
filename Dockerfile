FROM nginx
RUN apt-get update
RUN rm -rf /usr/share/nginx/html/index.html
#COPY index.html /usr/share/nginx/html/