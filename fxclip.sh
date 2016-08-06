#!/bin/bash

while [ 1 ];do
  CB=$(xclip -o)
  if [ "$CB" != "$pCB" ];then
    nb=$(grep "$CB" board|wc -l)
    if [ "$nb" -eq "0" ];then
      echo "$CB" >> board
      echo "$CB"
    fi
  fi
  pCB=$CB
  sleep 0.5
done
