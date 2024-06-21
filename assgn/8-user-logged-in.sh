#! /bin/bash

read -p "enter username: " username

if [ -z "$username" ]
then
    echo "username cannot be empty"
else
    time=$(who | grep -w $username | awk '{print $4}')
    if [ -z "$time" ]
    then
        echo "user '$username' doesn't exist or is not logged in"
    else
        echo "user '$username' logged in at $time"
    fi
fi
