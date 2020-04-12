#!/bin/bash

for sdomain in $(cat subdomains.txt);do
        name=${sdomain##*/}
        protocol=${sdomain%:*}
        echo "Enumerating directories of $sdomain and output file can be found at ./report/$protocol.$name"

        gobuster dir -u $sdomain -w /opt/wordlist/seclists/Discovery/Web-Content/raft-large-words.txt -t100 -o report/$protocol.$name --wildcard
done
