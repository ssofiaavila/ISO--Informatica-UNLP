#Modificar el script creado en el inciso anterior para que los números sean recibidos
#como parámetros. El script debe controlar que los dos parámetros sean enviados.


operaciones(){
    if [$# -ge 2]
    then
        echo "Suma:"
        let suma= $num1+$num2
        echo suma

        echo "Resta:"
        let resta= $num1-$num2
        echo resta

        echo "Multiplicacion:"
        let mult:$num1+$num2
        echo mult 

        echo "Division"
        let div= $num1/$num2
        echo div
    else
        echo  "No se ingresaron los dos valores"
        exit 1
    fi




}


## PROGRAMA PRINCIPAL
echo "Ingrese dos numeros"
read num1
read num2
operaciones $num1 $num2

