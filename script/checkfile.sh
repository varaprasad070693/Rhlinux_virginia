#!/bin/bash

#set -x
file=$1
search=`find . -name "$file"`

if [ -f $1 ];then
	echo -e "$1 file found\n$search"
	echo "enter a username to change ownership"
	read user
        sudo chown "$user" "$file"
	ls -lrt $file
else
	echo -e "file not found\ncreating a file $file"
	touch $file
	ls
fi

