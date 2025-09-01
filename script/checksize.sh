#!/bin/bash

echo "enter a file name to check"
read name

size=`du -s $name | awk -F " " '{print $1}'`

if [ $size -eq 0 ];then
echo "$name is empty"
else
echo -e "$name is not empty and size=$size"
fi 

