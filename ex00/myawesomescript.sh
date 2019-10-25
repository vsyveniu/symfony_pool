#!/bin/bash
if [ $# -eq 1 ]; then
  curl -s $1 | grep href | cut -d '"' -f 2 | cut -d "/" -f 1 -f 2 -f 3
elif [ $# -eq 0 ]; then
  echo "you must specify one argument"
else
  echo "too much arguments"
 fi