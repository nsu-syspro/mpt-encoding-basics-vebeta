#!/usr/bin/env bash

# Вывести время в формате:
#   15 час/а/ов 23 минут/ы

read -r H M < <(date '+%H %M' "$@")

plural() {
    # $1 — число, $2/$3/$4 — формы для 1 / 2-4 / 5+
    local n=$(( $1 % 100 ))
    local k=$(( $1 % 10 ))
    if (( n >= 11 && n <= 14 )); then echo "$4"
    elif (( k == 1 ));           then echo "$2"
    elif (( k >= 2 && k <= 4 )); then echo "$3"
    else                              echo "$4"
    fi
}

echo "$H $(plural "$H" час часа часов) $M $(plural "$M" минута минуты минут)"

