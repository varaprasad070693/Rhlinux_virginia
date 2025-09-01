#!/bin/bash
#set -x
if [ $1 -gt $2 ];then
	large=$1;large2=$2;
else
	large=$2;large2=$1;
fi

for i in $*
do
	if [ $i -gt $large ];then
	large2=$large;large=$i		
	fi
done
echo "2nd largets no. is $large2"
#55 62 28 25 52 18 63
