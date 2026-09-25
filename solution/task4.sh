#!/usr/bin/env bash

# Вывести дату в формате:
#   Freitag, 13. Oktober 2023

sudo locale-gen de_DE.UTF-8
sudo update-locale
LC_TIME=de_DE.UTF-8 date -d "$*" '+%A, %-d. %B %Y'
