#!/usr/bin/env bash

# Вывести время в формате:
#   13 октября 2023 года, Пятница

export LC_ALL=ru_RU.utf8

date -d "$*" '+%d %B2 %Y года, %A' | sed -E 's/, ([а-яё])/, \U\1/'