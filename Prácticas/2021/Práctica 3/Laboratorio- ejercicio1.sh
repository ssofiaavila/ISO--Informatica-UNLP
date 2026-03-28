#Escribir un script de Bash que reciba un parámetro y haga lo siguiente:
#Si el parámetro es 1, debe imprimir A B
#Si el parámetro es 2, debe imprimir C D
# Si el parámetro recibido no es ni 1 ni 2 debe imprimir el siguiente mensaje en pantalla: "El único parámetro de entrada debe ser 1 o 2".
#!/bin/bash
if [$# -ne 'i']; then
    echo "No se recibio ningun numero"
    exit 2
else
    if [$1 -eq '1']; then
        echo "A \n B"
    elif [$1 -eq '2']; then
        echo "C \n D"
    else
        "Solo debo recibir 1 o 2"
    fi 
    exit 0
fi