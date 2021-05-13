#!/bin/bash

export VAULT_ADDR='https://vault.stanford.edu'
vault login -method=ldap username=$VAULT_USER password=$VAULT_PASS

mkdir ~/.ssh
eval `ssh-agent -s`