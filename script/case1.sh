#!/bin/bash

case $1 in
	1|3) echo "this is odd"
		;;
	2|4) echo "this is even"
		;;
	*) echo "this is invalid"
esac
