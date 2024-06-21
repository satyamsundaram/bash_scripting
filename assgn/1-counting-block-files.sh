#! /bin/bash

echo -e "no. of block device files in /dev: \c"
ls -l /dev | grep ^b | wc -l
