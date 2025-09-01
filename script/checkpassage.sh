#!/bin/bash

if [ $# -ne 2 ]; then
	echo " pass 2 args"
	exit 1
fi

echo "age more than $2"

sed '1d' $1 > data1

while read line
do
	age=`echo "$line" | awk -F " " '{print $3}'`
	if [ $age -gt $2 ]; then
		echo "$line"
	fi
done < data1
rm data1
