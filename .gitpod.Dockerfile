FROM drupal:php7.4-apache

RUN apt update
RUN apt install git imagemagick rsync nano wget -y

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN adduser www-data root
RUN adduser root www-data

RUN composer self-update --1
RUN composer global config minimum-stability dev
RUN composer global require drush/drush:^8.0 hirak/prestissimo --no-update
RUN composer global update
RUN echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> ~/.bashrc

RUN cd /var/www && rm -rf html && ln -s /workspace/gitpod-test/docroot html

