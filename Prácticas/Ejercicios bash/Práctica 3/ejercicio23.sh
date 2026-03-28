#Implemente un script que recorra un arreglo compuesto por números e imprima en pantalla
#sólo los números pares y que cuente sólo los números impares y los informe en pantalla al
#finalizar el recorrido.

arreglo=(10 15 8 9 1 3 14)

informar(){
    impares=0
    for i in ${arreglo[*]}
    do
        let resto= i % 2
        if [$resto -eq 0 ]; then
            echo $i
        else
            let impares++
        fi
    done
    echo "Hay $impares numeros impares"


}

## PRINCIPAL
informar