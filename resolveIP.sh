#!/bin/bash

file=$1

while IFS= read line
do
        hostresolve=$(host $line |grep "has address" |cut -d' ' -f4)
        echo "$(tput setaf 2)$line $(tput setaf 7) : $hostresolve" &
done <"$file"
