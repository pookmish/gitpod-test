FROM gitpod/workspace-mysql

USER root

RUN apt-get update
RUN apt-get install rsync -y

USER gitpod

RUN composer global config minimum-stability dev
RUN composer global require drush/drush:^8 hirak/prestissimo --no-update
RUN composer global update
RUN echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> ~/.bashrc
