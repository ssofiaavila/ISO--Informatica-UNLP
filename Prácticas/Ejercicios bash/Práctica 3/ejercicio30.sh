#Realice un script que mueva todos los programas del directorio actual (archivos ejecutables)
#hacia el subdirectorio “bin” del directorio HOME del usuario actualmente logueado. El script
#debe imprimir en pantalla los nombres de los que mueve, e indicar cuántos ha movido, o
#que no ha movido ninguno. Si el directorio “bin” no existe,deberá ser creado.

#!/bin/bash

#prueba deberia ser bin
if [ -e $HOME/prueba ]
then
	echo existe
	for i in $(find $PWD -name "*.docx")
	do
		mv $i $HOME/prueba
	done
else
	mkdir prueba
	echo lo cree
fi