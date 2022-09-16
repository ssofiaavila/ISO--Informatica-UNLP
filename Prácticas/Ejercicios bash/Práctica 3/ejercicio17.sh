#Escribir un script que al ejecutarse imprima en pantalla los nombre de los archivos que se
#encuentran en el directorio actual, intercambiando minúsculas por mayúsculas, además de
#eliminar la letra a (mayúscula o minúscula). Ejemplo, directorio actual:
#IsO
#pepE
#Maria
#Si ejecuto: ./ejercicio17
#Obtendré como resultado:
#iSo
#PEPe
#mRI
#Ayuda: Investigar el comando tr

#!/bin/bash
cambiar_nombre{
    for i in $(ls -a l)
    do
        txt= "$(echo ${i})"
        echo txt | tr '[:upper:][:lower:]' '[:lower:][:upper:]'
        echo $(echo ${texto} | tr -d "aA")
    fi



}

##PROGRAMA PRINCIPAL
cambiar_nombre
