#Escriba un script que reciba una cantidad desconocida de parámetros al momento de su
#invocación (debe validar que al menos se reciba uno). Cada parámetro representa la ruta
#absoluta de un archivo o directorio en el sistema. El script deberá iterar por todos los parámetros
#recibidos, y solo para aquellos parámetros que se encuentren en posiciones impares
#(el primero, el tercero, el quinto, etc.), verificar si el archivo o directorio existen en el sistema,
#imprimiendo en pantalla que tipo de objeto es (archivo o directorio). Además, deberá
#informar la cantidad de archivos o directorios inexistentes en el sistema.

informar_directorio (){
    if [ $# -eq 1 ] || [ $# -gt 1 ]
    then
    j=1
    cantInex=0
    for i in $*
    do
        if [ $(expr $j % 2) -eq 0 ] #Si es par, se saltea dos bucles y pasa al siguiente
        then
            let j++
            continue 2
        else # Si es impar
            if [ -e $i ] # Existe?
            then        
                if [ -f $i ] # Fichero?
		        then
			        echo "Es un fichero ordinario (archivo)"
		        else
			        if [ -d $i ] # Si no es fichero, es carpeta?
			        then
				        echo "Es una directorio ordinario (carpeta)"
			        fi
                fi
            else
                echo "El directorio o archivo no existe"
                let cantInex++
            fi
        fi
        let j++
    done
    echo "Cantidad de inexistentes: ${cantInex}"
else
    echo "Faltan parametros"
    exit 1 
fi



}