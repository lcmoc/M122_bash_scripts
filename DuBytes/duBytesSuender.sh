#!/bin/bash

# Script: du bytes sünder
# Author: Luca Mock
# Datum: 25.03.2023

total_size=$(find . -type f -print0 | xargs -0 stat -f "%z" | awk '{sum+=$1} END {print sum}')

echo "Total size: $(echo $total_size | awk '{ split( "B KB MB GB TB" , v ); s=1; while( $1>=1024 ){ $1/=1024; s++ } printf "%.2f %s\n", $1, v[s] }')"

find . -type f -exec ls -lh {} + | awk '{print $5, $9}' | sort -hr | head -n 3 | awk '{print NR ". " $2 " (" $1 ")"}'
