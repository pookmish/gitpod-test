FROM drupal:php7.4-apache
RUN apt update
RUN apt install git

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN composer self-update
RUN composer global config minimum-stability dev
RUN composer global require drush/drush --no-update
RUN composer global update
RUN cd /var/www && rm -rf html