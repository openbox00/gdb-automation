#!/bin/bash 
pkill -9 qemu-system-arm

#compare gdb.txt and mem.txt context
cmp gdb.txt mem.txt

if [ "$?" == "0" ] ; then
	printf "the uart and mem are %s\n" $(cat gdb.txt)

else
	printf "error:mem is %s, gdb is %s\n" $(cat mem.txt) $(cat gdb.txt)
fi
 

