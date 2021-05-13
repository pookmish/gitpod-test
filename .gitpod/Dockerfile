FROM gitpod/workspace-mysql

RUN composer global self-update --1
RUN composer global config minimum-stability dev
RUN composer global require drush/drush:^8 hirak/prestissimo --no-update
RUN composer global update
RUN echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> ~/.bashrc
