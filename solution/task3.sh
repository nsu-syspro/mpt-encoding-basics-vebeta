#!/usr/bin/env bash

# Вывести время в формате:
#   13 октября 2023 года, Пятница

LC_ALL=ru_RU.utf8 date -d "$*" '+%d %B %Y года, %A'