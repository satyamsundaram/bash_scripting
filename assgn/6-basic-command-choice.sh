#! /bin/bash

function show_opts() {
    echo ""
    echo "choose an option:"
    echo "1 for ls"
    echo "2 for pwd"
    echo "3 for who"
    echo "4 for exit"
}

show_opts
read -p "enter your choice: " choice

while [ $choice -ne 4 ]
do
    case $choice in
        1) echo "---ls---"
           ls
           echo "---end---" ;;
        2) echo "---pwd---"
           pwd
           echo "---end---" ;;
        3) echo "---who---"
           who
           echo "---end---" ;;
        *) echo "invalid choice" ;;
    esac

    show_opts
    read -p "enter your choice: " choice
done
