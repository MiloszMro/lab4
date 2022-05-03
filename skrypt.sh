#!/bin/bash
args=("$@")
if [ "$1" == '--date' ]
then
	date
fi

if [ "$1" == '--logs' ]
then
       for i in $(seq 1 100);
		do
			touch log$i.txt;
			echo log$i >> log$i.txt
			echo $0 >> log$i.txt
			date >> log$i.txt
		done
fi
