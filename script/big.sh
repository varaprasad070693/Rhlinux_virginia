#!/bin/bash

echo "Biggest of two numbers"

if [ $# -ne 2 ];then
echo "Pass only two args"
exit 1
fi

echo "Two numbers to check are $1 $2"

if [ $1 -gt $2 ];then
echo "$1 is big"
else
echo "$2 is big"
fi
