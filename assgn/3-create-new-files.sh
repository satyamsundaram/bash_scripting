#! /bin/bash

args=("$@")
for (( i=0; i<$#; i++ ))
do
  touch ${args[i]}
  echo "${args[i]} named file created"
done
