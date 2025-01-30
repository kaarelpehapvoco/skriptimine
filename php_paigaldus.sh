#!/bin/bash

# PHP paigaldusskript

# Kontrollime, kas PHP on juba paigaldatud

phpStatus=$(dpkg-query -W -f='${status}' php8.2 2>/dev/null | grep -c 'ok installed')

# Paigaldame PHP

if [ $phpStatus -eq 0 ]; then
echo "Paigaldame PHP"
sudo apt install php
fi
