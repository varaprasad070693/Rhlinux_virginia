#!/bin/bash

echo "Printing num from 1 to 50"

#num=1

#while [ $num -le 50 ];do
for i in {1..50};do
#	m5=`expr $num % 5`
#	m7=`expr $num % 7`
	m5=`expr $i % 5`
        m7=`expr $i % 7`
	if [ $m5 -eq 0 ];then
		echo "Hi"
	elif [ $m7 -eq 0 ];then
		echo "Hello"
	else
		echo "$i"
	fi
#	num=`expr $num + 1`
done

