#!/bin/bash

largest=$1

for i in $*
do
	if [ $i -gt $largest ];then
		largest=$i
	fi
done	
echo -e "$largest is the largest number\nTotal no num of arguments passed are $#"

