#!/bin/bash

# Script Zahlenraten Versuche
# Author: Luca Mock
# Datum: 09.03.2023

number=$((RANDOM % 10 + 1))
attempts=3 # Anzahl der Versuche
guess_count=0

echo "Guess a number between 1 and 10:"

while [ $guess_count -lt $attempts ]; do
  echo "made guesses: $guess_count" 
  echo "max guesses: $attempts" 
  echo "---------------------------"
  read guess


if ! [[ "$guess" =~ ^[0-9]+$ ]] || [ "$guess" -gt 10 ]; then
    echo "Please enter a valid number between 1 and 10"
    guess_count=$((guess_count+1))
    continue
  fi

  if [ "$guess" -lt "$number" ]; then
    echo "Too low. Guess again:"
    guess_count=$((guess_count+1))
    continue
  fi

  if [ "$guess" -gt "$number" ]; then
    echo "Too high. Guess again:"
    guess_count=$((guess_count+1))
    continue
  fi

  echo "Congratulations! You guessed the number."
  break
done

if [ $guess_count -eq $attempts ]; then
  echo "Sorry, you've run out of attempts. The number was $number."
fi
