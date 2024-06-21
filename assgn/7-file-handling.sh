#! /bin/bash

function print_opts() {
    echo ""
    echo "from the following options:"
    echo "1 to copy a file"
    echo "2 to remove a file"
    echo "3 to rename a file"
    echo "4 to exit"
    echo ""
}

print_opts
read -p "enter your choice: " choice

while [ $choice -ne 4 ]
do
    case $choice in
        1) echo "---copy---"
           read -p "enter the source file: " source
           read -p "enter the destination file: " dest
           cp $source $dest
           echo "---end---" ;;
        2) echo "---remove---"
           read -p "enter the file: " file
           rm $file
           echo "---end---" ;;
        3) echo "---rename---"
           read -p "enter the old file name: " old
           read -p "enter the new file name: " new
           mv $old $new
           echo "---end---" ;;
        *) echo "invalid choice" ;;
    esac

    print_opts
    read -p "enter your choice: " choice
done
