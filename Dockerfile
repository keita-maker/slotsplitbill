FROM debian
RUN apt-get update && apt-get install -y nginx
COPY ./index.html /var/www/html/
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]