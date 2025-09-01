#!/bin/bash

#set -x
if [ $1 -lt $2];then
	small=$1;small2=$2
else
	small=$2;small2=$1
fi

for i in $*
do
	if [ $i -lt $small ];then
		small2=$small;small=$i
	fi
done
echo "2nd smallest no. is $small2"


