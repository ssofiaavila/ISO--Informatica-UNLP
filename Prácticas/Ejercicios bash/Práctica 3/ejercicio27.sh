#	Realice un script que implemente a través de la utilización de funciones las operaciones básicas sobre arreglos:
#   inicializar: Crea un arreglo llamado array vacío
#   agregar_elem <parametro1>: Agrega al final del arreglo el parámetro recibido
#   eliminar_elem <parametro1>: Elimina del arreglo el elemento que se encuentra en la
#   posición recibida como parámetro. Debe validar que se reciba una posición válida
#   longitud: Imprime la longitud del arreglo en pantalla
#   imprimir: Imprime todos los elementos del arreglo en pantalla
#   inicializar_Con_Valores <parametro1><parametro2>: Crea un arreglo con longitud
#   <parametro1>y en todas las posiciones asigna el valor <parametro2>


function inicializar(){
    arreglo=()
}

function agregar_elem(){
    if [$# -ne 1]
    then 
        echo "No se ha ingresado un valor para agregar"
        break
    fi
    else
    if [ ${#arreglo[*]} -eq 0 ]
	then
		arreglo[0]=$1
	else
		arreglo[${#arr[*]}]=$1
	fi
}

function imprimireliminar_elem(){
    if ($# -ne 1)
    then
        echo "No se ha ingresado una posicion para eliminar"
        break
    fi
    else
        if [$1 -lt $(expr ${#arreglo[*]} - 1)]
            unset arreglo[$1]
        fi
}

function longitud(){
    echo "La longitud del arreglo es: ${#arreglo[*]-1}"
}
function imprimir {
	echo "${arr[*]}"
}

function inicializar_con_valores {
	arreglo=()
	for ((i=0; i<$1; i++))
	do
		arr[$i]=$2
	done
}

##PROGRAMA PRINCIPAL
inicializar
agregar_elem 45
eliminar_elem 1
longitud
imrpmir
inicializar_con_valores 2 3
