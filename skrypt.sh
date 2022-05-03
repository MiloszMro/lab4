#!/bin/bash
args=("$@")
if [ "$1" == '--date' ]
then
	date
fi

if [ "$1" == '--logs' ]
then
	if [ -n "$2" ]
	then
       		for i in $(seq 1 $2);
			do
				touch log$i.txt;
				echo log$i >> log$i.txt
				echo $0 >> log$i.txt
				date >> log$i.txt
			done
	

	else
       		for i in $(seq 1 100);
			do
				touch log$i.txt;
				echo log$i >> log$i.txt
				echo $0 >> log$i.txt
				date >> log$i.txt
			done
	fi
fi
