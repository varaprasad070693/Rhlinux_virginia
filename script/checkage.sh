#!/bin/bash

echo "Printing age of emp who are more than 50"
sed '1d' $1 > data1

while read line
do
	age=`echo "$line" | awk -F " " '{print $3}'`
if [ $age -gt 50 ];then
 	echo "$line"
fi
done < data1
rm data1
