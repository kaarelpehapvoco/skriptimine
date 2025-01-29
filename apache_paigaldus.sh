#!/bin/bash

# kontrollime, kas apache2 on juba paigaldatud

status=$(dpkg-query -W -f='${status}' apache2 | grep -c 'ok installed')

if [ $status -eq 0 ]; then
  echo "Apache2 ei ole paigaldatud, paigaldame apache2 ja käivitame selle"
	sudo apt update && sudo apt install apache2 -y
elif [ $status -eq 1 ]; then
  echo "Apache2 on paigaldatud, käivitame selle"
fi
systemctl start apache2
systemctl status apache2
