#!/bin/bash

# Script: Text Proccessing
# Author: Luca Mock
# Datum: 5.04.2023

cat fox1.txt fox2.txt fox3.txt |
  sort |
  uniq |
  tee final.txt
