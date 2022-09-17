#Realice un script que simule el comportamiento de una estructura de PILA e implemente
#las siguientes funciones aplicables sobre una estructura global definida en el script:
#push: Recibe un parámetro y lo agrega en la pila 
#pop: Saca un elemento de la pila
#length: Devuelve la longitud de la pila 
#print: Imprime todos elementos de la pila


pila=() #declaro la pila vacia 

push(){
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

# PROGRAMA PRINCIPAL
push 10
pop 
length
print 