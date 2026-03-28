#Realice un script que reciba como parámetro el nombre de un directorio. Deberá validar que
#el mismo exista y de no existir causar la terminación del script con código de error 4. Si el
#directorio existe deberá contar por separado la cantidad de archivos que en él se encuentran
#para los cuales el usuario que ejecuta el script tiene permiso de lectura y escritura, e informar
#dichos valores en pantalla. En caso de encontrar subdirectorios, no deberán procesarse, y
#tampoco deberán ser tenidos en cuenta para la suma a informar.


informar_directorio(){
    if [$# -ne 1]
    then 
        echo "No se ha ingresado un nombre de directorio"
        break
    fi
    else
        if [ -d "$1" ]
        then
            for i in ls $1;
            do
               if [ -f $i ]&&[ -r $i ]&&[ - w $i ]; then
                    CANT=`expr $CANT + 1`   
                fi
            done
            echo $CANT
        else echo "No existe directorio."
        exit 4
        fi
}


##principal
echo "ingrese nombre de directorio"
read directorio
informar_directorio $directorio