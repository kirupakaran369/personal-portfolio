FROM ubuntu

LABEL PROJECT="BigGame"

RUN apt-get -y update && apt-get -y install nginx 

COPY ngnix.conf /etc/nginx/sites-available/ngnix.conf

COPY . /var/www/html

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]