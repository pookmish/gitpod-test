#!/bin/bash

composer install -n
vendor/bin/blt alias --no-interaction
source ~/.bash_profile
blt blt:telemetry:disable --no-interaction
gp env APACHE_DOCROOT_IN_REPO=docroot
eval $(gp env -e)
cp .gitpod/blt.yml blt/local.blt.yml
blt settings
blt drupal:install -n
