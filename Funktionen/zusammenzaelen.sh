#!/bin/bash

# Script: Zusammenzählen
# Author: Luca Mock
# Datum: 18.04.2023

zaehleVonBis() {
    start=$1
    ende=$2
    summe=0
    for (( zahl=start; zahl<=ende; zahl++ ))
    do
        (( summe+=zahl ))
    done
    echo $summe
}

read -p "Gib die Startzahl ein: " start
read -p "Gib die Endzahl ein: " ende

ergebnis=$(zaehleVonBis $start $ende)

echo "Die Summe von $start bis $ende ist $ergebnis."
