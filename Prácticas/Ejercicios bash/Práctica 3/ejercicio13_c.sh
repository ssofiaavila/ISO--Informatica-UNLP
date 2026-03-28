
buscar(){
    if [-d $1]
    then
        echo "Es un directorio"
        return 0
    fi
    if [-f $1]
    then
        echo "Es un archivo"
        return 0
    fi

    mkdir /home/$nombre
    return 0




}






##PRINCIPAL
read $nombre
buscar $nombre