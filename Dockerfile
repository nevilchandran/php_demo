FROM php:7.1.8-apache
COPY . /var/www/public/
COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
