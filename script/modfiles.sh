#!/bin/bash

#dir to search modified files
dir="/home/ec2-user/script"

#e-mail info
to="varahsn@gmail.com"
sub="files modified 1 day ago"

echo "searching dir:$dir"
#find files modified 1 day ago
files="$(find "$dir" -type f -mtime 1)"


#if any files are modified 1 day ago
if [ -n  "$files" ];
then
	body="following files have been modified one day ago:\n\n$files"
	echo -e "$body" #| sendmail -s "$sub" "$to"
else
	echo "no files were modified one day ago" #|sendmail -s "$sub" "$to"
fi


