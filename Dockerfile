FROM ubuntu:latest

RUN apt update && apt install apache2 -y

COPY . /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
