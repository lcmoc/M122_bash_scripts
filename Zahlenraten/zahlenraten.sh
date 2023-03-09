#!/bin/bash

number=$((RANDOM % 10 + 1))

echo "Guess a number between 1 and 10:"

while true; do
  read guess

  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    continue
  fi

  if [ "$guess" -lt "$number" ]; then
    echo "Too low. Guess again:"
    continue
  fi

  if [ "$guess" -gt "$number" ]; then
    echo "Too high. Guess again:"
    continue
  fi

  echo "Congratulations! You guessed the number."
  break
done
