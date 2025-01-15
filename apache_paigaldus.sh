#!/bin/bash

status=$(dpkg-query -W -f='${status}' apache2 | grep -c 'ok installed')

if [ "$status" -eq 0 ]; then
  echo "Apache2 ei ole paigaldatud, paigaldame apache2"
  apt install apache2
elif [ $status -eq 1 ]; then
  echo "Apache2 on paigaldatud"
  service apache2 start
  service apache2 status
fi
