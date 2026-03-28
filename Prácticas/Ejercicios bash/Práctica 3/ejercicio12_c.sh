#Realizar una calculadora que ejecute las 4
#operaciones básicas: +, - ,*, %. Esta calculadora 
#debe funcionar recibiendo la operación y los números 
#como parámetros

calculadora(){
    let result 
    if[$3 = '+']
    then
        return $1+$2
    fi
    if[$3 = '-']
    then
        return $1-$2
    fi
    if[$3 = '*']
    then
        return $1*$2
    fi
    if[$3 = '/']
    then
        return $1/$2
    fi
}


## PROGRAMA PRINCIPAL
echo "Ingrese dos numeros"
read num1
read num2
echo "Ingrese operacion a realizar: + - * /"
read op
calculadora $num1 $num2 $op 
echo $?
