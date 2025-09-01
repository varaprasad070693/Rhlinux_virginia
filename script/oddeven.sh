#!/bin/bash

num=1
sed '1d' $1 > data1

while read line
do
	var=`expr $num % 2`
	if [ $var -eq 0 ];then
	 echo	"$num $line" >> log_even
	else
	 echo	"$num $line" >> log_odd
	fi
	num=`expr $num + 1`
done < data1

#rm data1

echo " Odd lines "
cat log_odd

echo " even lines "
cat log_even

rm  log_odd log_even data1
