#Realizar un script que le solicite al usuario 2 números, los lea de la entrada Standard
#e imprima la multiplicación, suma, resta y cual es el mayor de los números leídos.

echo "Ingrese dos numeros"
read num1
read num2

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
