FROM ubuntu:latest

RUN apt update -y && apt install git -y

RUN apt install apache2 -y
WORKDIR /app
RUN git clone https://github.com/samudralapavan/sample.git

COPY /app/* /var/www/html

CMD ["apache2ctl","-D","FORGROUND"]
