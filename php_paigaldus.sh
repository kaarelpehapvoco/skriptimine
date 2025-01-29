#!/bin/bash

# PHP paigaldusskript

# Kontrollime, kas apache2 on juba paigaldatud

phpStatus=$(dpkg-query -W -f='${status}' php7.0 2>/dev/null | grep -c 'ok installed')

if [ $phpStatus -eq 0 ]; then
fi
