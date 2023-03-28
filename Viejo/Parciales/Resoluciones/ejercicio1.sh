#!/bin/bash
cant=0
proceso= "apache"
while [cant -ne 10]
do
	if pgrep -x "$proceso" > /dev/null
	then
		cant++
		sleep 5
	fi
done
echo "El proceso $proceso se ha ejecutado 10 veces"
exit 50