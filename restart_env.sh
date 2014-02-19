#!/bin/bash

for ARG in $*
do
  echo restarting $ARG
  ssh -i ~/ticckle-application.pem ubuntu@$ARG 'bash -s' < ./restart_unicorn.sh
done


