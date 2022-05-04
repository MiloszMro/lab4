#!/bin/bash
args=("$@")
if [ "$1" == '--date' ] || [ "$1" == '-d' ]
then
	date
fi

if [ "$1" == '--logs' ] || [ "$1" == '-l' ]
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
if [ "$1" == '--help' ] || [ "$1" == '-h' ]
then
	echo "--date -d      wyświetla aktualną date"
	echo "--logs -l     dodaje 100 plików log"
	echo "--logs x -l x   dodaje x plików log"
fi