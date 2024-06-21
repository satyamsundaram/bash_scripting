#! /bin/bash

mkdir -p ~/.recyclebin

for file in "$@"
do
    if [ -e "$file" ]
    then
        mv "$file" ~/.recyclebin
        echo "file $file moved to ~/.recyclebin"
    else
        echo "File $file does not exist"
    fi
done
