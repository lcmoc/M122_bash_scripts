#!/bin/bash
input="$1"
output="$2"

if [ -z $input ] || [ -z $output ]
then
    echo "Dieses Script filtert aus einer Speziellen Liste"
    echo "die deutschprachigen Hauptarbeitsbezeichnungen heraus."
    echo " "
    echo "Sie müssen beim Aufruf des Programms $0 den namen der Input-,"
    echo "und der Outpit-Datei mitgeben."
    exit 1
fi

grep '^2' "$input" | grep -a -v "26" | cut -f3- > "$output"
