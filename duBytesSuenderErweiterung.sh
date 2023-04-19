#!/bin/bash

# Script: du bytes sünder Erweiterung
# Author: Luca Mock
# Datum: 4.04.2023

if [ $# -eq 0 ]; then
  echo "Usage: $0 <directory>"
  echo "Dieses Script listed ab einem Verzeichnis rekursiv die summe des Speicherbedarfs auf."
  echo "Sodann noch die drei groesten Dateien."
  echo ""
  echo "Sie muessen beim Aufruf des Scripts $0 den Namen des geünschten Verzeichnis mitgeben."
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Error: Directory '$1' does not exist"
  exit 1
fi

total_size=$(find "$1" -type f -print0 | xargs -0 stat -f "%z" | awk '{sum+=$1} END {print sum}')

echo "Total size: $(echo $total_size | awk '{ split( "B KB MB GB TB" , v ); s=1; while( $1>=1024 ){ $1/=1024; s++ } printf "%.2f %s\n", $1, v[s] }')"

find "$1" -type f -exec ls -lh {} + | awk '{print $5, $9}' | sort -hr | head -n 3 | awk '{print NR ". " $2 " (" $1 ")"}'
