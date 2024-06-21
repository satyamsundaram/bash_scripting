#! /bin/bash

for file in "$@"
do
    result=$(find $file 2> /dev/null)
    if [[ $result == $file ]]
    then
        echo "File $file exists"
    else
        echo "File $file does not exist"
    fi
done
