FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install git -y

RUN git clone https://github.com/Jade-Eye/DBDA.git

WORKDIR  /web

COPY . /

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apachetl","-D","FORGROUND"]
