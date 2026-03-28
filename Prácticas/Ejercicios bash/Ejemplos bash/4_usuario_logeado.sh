#!/bin/bash
#Recibe parámetro un nombre de usuario
#Ejemplo de Ejecución ejercicio18usuario
if [ $# -ne 1 ]
then
	echo "La Cantidad de parametros es incorrecta"
	exit 1
fi
#Se podría validar contra el /etc/passwd que el usuario exista
while true; do
	seLogueo=$(who | grep $1 | wc -l)
	if [ $seLogueo != 0 ]
	then
		echo "usuario $1 logueado"
		exit 0
	fi
	sleep 10
done
