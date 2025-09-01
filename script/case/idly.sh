#!/bin/bash

#set -x
num=1
pqty=0;pp=10;pp1=0;
tqty=0;tp=15;tp1=0;
mqty=0;mp=20;mp1=0;
rqty=0;rp=20;rp1=0;
while [ $num -ge 1 ]
do
	echo "Select the below option to place the order"
	echo -e "1.Plain Idly\n2.Thatte Idly\n3.Masala Idly\n4.Rava Idly\n0.Return"
	echo "Please Enter your Option"
	read opt
case $opt in
	1) echo "Enter the Plain Idly QTY"
		read q1;echo "Plain Idly $q1"
		pqty=`expr $pqty + $q1`
		;;
	2) echo "Enter the Thatte Idly QTY"
		read q2;echo "Thatte Idly $q2"
		tqty=`expr $tqty + $q2`
		;;
	3) echo "Enter Masala Idly QTY"
		read q3;echo "Masala Idly $q3"
		mqty=`expr $mqty + $q3`
		 ;;
	4) echo "Enter Rava Idly QTY"
		read q4;echo "Rava Idly $q4"
		rqty=`expr $rqty + $q4`
		;;
	0) echo "Return to Main menu"	
		echo -e "\nItems Ordered:"
		if [ $pqty -gt 0 ];then
			pp1=`expr $pp \* $pqty`
		echo "Plain Idly $pqty $pp1 rs"
		fi
		if [ $tqty -gt 0 ];then
			tp1=`expr $tp \* $tqty`
		echo "Thatte Idly $tqty $tp1 rs"
		fi
		if [ $mqty -gt 0 ];then
			 mp1=`expr $mp \* $mqty`
		echo "Masala Idly $mqty $mp1 rs"
		fi
		if [ $rqty -gt 0 ];then
			 rp1=`expr $rp \* $rqty`
		echo "Rava Idly $rqty $rp1 rs"
		fi
		total=`expr $pp1 + $tp1 + $mp1 + $rp1`
		echo "Total Bill:$total rs"
		exit 0
		;;
	*) echo "entered invalid option,please select the appropriate option"
		;;
esac 
done

#amount=`
#echo "Total bill:$amount"

