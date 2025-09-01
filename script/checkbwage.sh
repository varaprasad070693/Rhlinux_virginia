#!/bin/bash

echo"age b/w 30 and 50"

sed '1d' $1 > data1

while read line
do
	age=`echo "$line" | awk -F " " '{print $3}'`
	if [ $age -gt 30 ] && [ $age -lt 50 ];then
		echo "$line"
	fi
done < data1
rm data1
