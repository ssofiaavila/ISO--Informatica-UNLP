#!/bin/bash

vector=();

function inicializar()
{
	vector=(1 2 3 4 5 6 7 8 9 10);
	echo "vector inicializado con éxito";
}

function longitud()
{
	echo "la longitud del vector es ${#vector[*]}";
}

function elementos()
{
	echo "los elementos son ${vector[@]}";
}


function salir()
{
	exit;
}

select opcion in inicializar longitud elementos salir
do
	$opcion
done
