#haga un script que renombre solo archivos de un directorio pasado
#como parametro agregandole una CADENA, contemplando las opciones:
#“-a CADENA”: renombra el fichero concatenando CADENA al final del nombre del
#archivo
#“-b CADENA”: renombra el fichero concantenado CADENA al principio del nombre
#del archivo

renombra(){
    if [$# -ne 3]
    then 
        echo "se tiene que indicar 3 parametros: un directorio, opcion A o B y una cadena"
        exit 1
    fi
    else
        case $2 in 
        "-a") for file in $(ls $1); do
            mv $1/$file $1/$file$3
            done
            ;;
        "-b") for file in $(ls $1);; do
            mv $1/$file $1/$3$file 
        done
        ;;
    esac
    fi
    exit 0
}


##PROGRAMA PRINCIPAL