#!/bin/bash

smallest=$1

for i in $*
do
	if [ $i -lt $smallest ];then
		smallest=$i
	fi
done
echo -e "$smallest is the smallest number\nTotal no. of arguments passed are $#"
