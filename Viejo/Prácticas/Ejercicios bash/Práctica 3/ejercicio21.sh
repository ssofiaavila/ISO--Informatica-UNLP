#Dentro del mismo script y utilizando las funciones implementadas:
#Agregue 10 elementos a la pila
#Saque 3 de ellos
#Imprima la longitud de la cola
#Luego imprima la totalidad de los elementos que en ella se encuentran.

pila=() #declaro la pila vacia 

push(){
    if [$# -ne 1]
    then 
        echo "No se ha ingresado un valor para apilar"
        break
    fi
    else
        ${pila[$(expr ${#pila[*]} - 1)]}=$1
        let dimL++

}

pop(){
    valor= ${pila[$(expr ${#pila[*]} - 1)]}
    unset pila[${pila[$(expr ${#pila[*]} - 1)]}]
    return ${valor}
}

length(){
    return ${#pila[@]}
}
print(){
    echo ${pila[@]}
}


##modulos para que quede mas lindo :p
push_10(){
    valores=(19 10 3 7 8 1 3 8 11 29)
    for i in ${valores}
    do
        push i
    done
}

pop_3(){
    for ((i=0; i<3; i++))
    do
        pop
    done
}



##PROGRAMA PRINCIPAL 
push_10
pop_3
length
echo "En la pila hay $? elementos"