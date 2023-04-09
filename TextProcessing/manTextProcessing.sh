#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Kein Befehl angegeben. Bitte geben Sie einen Befehl als Parameter an."
    exit 1
fi

command=$1

man "$command" | head -n4 | tail -n1 | cut -b 8-
