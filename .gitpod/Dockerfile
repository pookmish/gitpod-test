FROM gitpod/workspace-mysql

USER root
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
RUN sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update
RUN apt-get install rsync vault -y

USER gitpod

RUN composer global config minimum-stability dev
RUN composer global require drush/drush:^8 hirak/prestissimo --no-update
RUN composer global update
RUN echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> ~/.bashrc
<meta name="google-site-verification" content="tUJ214wF9k79KCsAn5wIOyOFR2eH0RlBANimm5MCFfU" />