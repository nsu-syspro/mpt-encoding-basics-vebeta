#!/usr/bin/env bash

# Вывести время в формате:
#   13 октября 2023 года, Пятница

read -r DAY MONTH_N YEAR WEEKDAY < <(date -d "$*" '+%-d %m %Y %A')

case $((10#$MONTH_N)) in
    1)  MONTH="января"   ;;
    2)  MONTH="февраля"  ;;
    3)  MONTH="марта"    ;;
    4)  MONTH="апреля"   ;;
    5)  MONTH="мая"      ;;
    6)  MONTH="июня"     ;;
    7)  MONTH="июля"     ;;
    8)  MONTH="августа"  ;;
    9)  MONTH="сентября" ;;
    10) MONTH="октября"  ;;
    11) MONTH="ноября"   ;;
    12) MONTH="декабря"  ;;
esac

case "$WEEKDAY" in
    Monday)    WEEKDAY="Понедельник" ;;
    Tuesday)   WEEKDAY="Вторник"     ;;
    Wednesday) WEEKDAY="Среда"       ;;
    Thursday)  WEEKDAY="Четверг"     ;;
    Friday)    WEEKDAY="Пятница"     ;;
    Saturday)  WEEKDAY="Суббота"     ;;
    Sunday)    WEEKDAY="Воскресенье" ;;
esac

echo "$DAY $MONTH $YEAR года, $WEEKDAY"
