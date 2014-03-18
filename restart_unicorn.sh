#!/bin/bash

sudo su
ps -ef | grep 'unicorn_rails master' | grep -v grep | awk '{print $2}' | xargs kill -9
cd /srv/www/ticckle_backend/shared/scripts
sleep 3
su deploy
./unicorn start
