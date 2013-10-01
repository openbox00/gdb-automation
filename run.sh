#!/bin/bash 
pkill -9 qemu-system-arm

#compare gdb.txt and mem.txt context
cmp gdb.txt mem.txt


if [ "$?" == "0" ] ; then
	echo "the uart and mem are "
	cat gdb.txt
	echo ""
else
	echo "error"
	echo "mem is "
	cat mem.txt
	echo "\ngdb is"
	cat gdb.txt
	echo ""
fi
 

