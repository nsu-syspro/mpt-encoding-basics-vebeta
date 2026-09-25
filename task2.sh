#!/usr/bin/env bash

# Вывести время в формате:
#   15 час/а/ов 23 минут/ы

if [ -n "$*" ]; then
    TIME_STR="$*"
else
    TIME_STR="now"
fi

read -r H M < <(date -d "$TIME_STR" '+%H %M')

plural() {
    local n=$(( 10#$1 % 100 ))
    local k=$(( 10#$1 % 10 ))
    if (( n >= 11 && n <= 14 )); then echo "$4"
    elif (( k == 1 ));           then echo "$2"
    elif (( k >= 2 && k <= 4 )); then echo "$3"
    else                              echo "$4"
    fi
}

echo "$H $(plural "$H" час часа часов) $M $(plural "$M" минута минуты минут)"
