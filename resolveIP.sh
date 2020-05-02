#!/bin/bash
# This script resolves ip for domains/subdomains from a file
# Currently only for IPv4 but a simple modification and will work for IPv6
# Subdomains should be given without protocols

file=$1

while IFS= read line
do
        hostresolve=$(host $line |grep "has address" |cut -d' ' -f4)
        echo "$(tput setaf 2)$line $(tput setaf 7) : $hostresolve"
done <"$file"
