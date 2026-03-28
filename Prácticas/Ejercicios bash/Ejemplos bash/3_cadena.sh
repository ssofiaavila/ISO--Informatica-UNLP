#!/bin/bash

#Recibe parámetros -a CADENA o -b CADENA
#$1 nombre del directorio, $2 es -a รณ -b, $3 es CADENA
#Ejemplo de Ejecución:
# bash -x ejercicio14RenombraArchivos /root/scripts/ejercicio14 -b zzzzzz
if [ $# -ne 3 ]
then
	echo "La Cantidad de parametros es incorrecta"
	exit 1
fi
if [ ! -d $1 ]
then
	echo "El primer parametro no es un directorio existente"
	exit 2
fi
if [ -z $3 ]
then
	echo "El tercer parametro es nulo"
	exit 3
fi
case $2 in
	"-a")
		for i in `ls $1`; do
			mv $1/$i $1/$i$3
		done
		;;
	"-b")
		for i in `ls $1`; do
			mv $1/$i $1/$3$i
		done
		;;
	*)
		echo "El segundo parametro debe ser -a o -b"
		exit 4
esac
