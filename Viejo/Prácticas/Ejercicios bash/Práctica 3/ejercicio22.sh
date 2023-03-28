#Dada la siguiente declaración al comienzo de un script: num=(10 3 5 7 9 3 5 4) (la cantidad
#de elementos del arreglo puede variar). Implemente la función productoria dentro de este
#script, cuya tarea sea multiplicar todos los números del arreglo


#!/bin/bash

num=(10 3 5 7 9 3 5 4)

productoria(){
    num=1
    for i in ${num[*]}
    do
        let num= num * ${i}
    done
    echo "La multiplicacion es $?"
}



##programa principal
productoria
