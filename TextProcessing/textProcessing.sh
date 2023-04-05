#!/bin/bash

cat fox1.txt fox2.txt fox3.txt |
  sort |
  uniq |
  tee final.txt
