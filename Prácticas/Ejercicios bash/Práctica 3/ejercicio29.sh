#Implemente un script que agregue a un arreglo todos los archivos del directorio /home cuya
#terminación sea .doc. Adicionalmente, implemente las siguientes funciones que le permitan
#acceder a la estructura creada:
#verArchivo <nombre_de_archivo>: Imprime el archivo en pantalla si el mismo se
#encuentra en el arreglo. Caso contrario imprime el mensaje de error “Archivo no encontrado”
#y devuelve como valor de retorno 5
#cantidadArchivos: Imprime la cantidad de archivos del /home con terminación .doc
#borrarArchivo <nombre_de_archivo>: Consulta al usuario si quiere eliminar el archivo
#lógicamente. Si el usuario responde Si, elimina el elemento solo del arreglo. Si el
#usuario responde No, elimina el archivo del arreglo y también del FileSystem. Debe
#validar que el archivo exista en el arreglo. En caso de no existir, imprime el mensaje
#de error “Archivo no encontrado” y devuelve como valor de retorno 10

#!/bin/bash

arr=()

function cantidadArchivos {
	echo "Cantidad de archivos: ${#arr[*]}"
}

function verArchivo {
	existe=0
	for i in ${arr[*]}
	do
		#Cuando se hace echo $i imprime /home/cacho/prueba/CSOClase7.docx 
		echo $(echo $i | cut -d '/' -f 5)
		if [ "$(echo $i | cut -d '/' -f 5)" = "$1" ]
		then
			existe=1
			break
		fi
	done
	if [ $existe -eq 1 ]
	then
		cat $i
	else
		echo "No existe el archivo en el arreglo"
	fi
}

j=0
#Deberia ser solo $HOME pero /prueba/ es para debuggear
#Deberia ser solo "*.doc" pero la x es por el tipo de extension que use para debuggear
for i in $(find $HOME/prueba/ -name "*.docx")
do
	arr[j]=$i
	let j++
done

verArchivo CSOClase7.docx
cantidadArchivos

#echo ${arr[*]}