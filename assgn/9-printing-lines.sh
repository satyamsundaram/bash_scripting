#! /bin/bash

read -p "enter starting line number: " start
read -p "enter ending line number: " end
read -p "enter file name: " file

head -n $end $file | tail -n +$start
# sed -n "${start},${end}p" $file
