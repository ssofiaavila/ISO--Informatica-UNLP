#!/bin/bash
#en $nombre guardo el nombre del archivo

echo "Nombre del archivo"
read nombre

#si existe, lo descomprimo y creo carpeta
#si no existe, informo
if [-f nombre]; then 
    echo "Descomprimir"
    if [! -d "archivo"]; then
        mkdir "archivo"
    fi
    tar -xvf "$archivo" -C "archivo"
else
    echo "No existe el archivo ingresado en el directorio""
    exit 0
fi

#voy a la carpeta
cd "nombre"
# creo array y almaceno cantidad de archivos
array=()
cantArchivos= $(($(ls | wc -l)/2))
#informo en caso que no haya archivos
#si no evaluo si son iguales y guardo el resultado en el arreglo
#imprimo el arreglo y cant. de archivos iguales
if [$cantArchivos -eq 0]; then
    echo "No Hay archivos"
    exit 0
else
    iguales=0
    for ((i=1;i<=$cantArchivos;i++));do
        diff s$i p$1
        array[i]=$? 
        if ($array[i] -eq '0'); then
            iguales= $(($iguales+1))
    done
    echo ${array[i]}
fi
