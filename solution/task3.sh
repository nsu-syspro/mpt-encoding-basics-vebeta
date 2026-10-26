#!/usr/bin/env bash

# Вывести время в формате:
#   13 октября 2023 года, Пятница

LC_TIME=ru_RU.UTF-8 date -d "$*" '+%d %OB %Y года, %A' | sed -E 's/, ([а-яё])/, \U\1/'