#Crear un script que muestre 3 opciones al usuario: 
#Listar, DondeEstoy y QuienEsta.
#Según la opción elegida se le debe mostrar:
#Listar: lista el contenido del directorio actual.
#DondeEstoy: muestra el directorio donde me encuentro ubicado.
#QuienEsta: muestra los usuarios conectados al sistema.



menu(){
    echo "1: Listar el contenido del directorio actual"
    echo "2: mostrar el directorio donde me encuentro ubicado"
    echo "3: mostrar usuarios conectados al sistema"
    read opcion
    case $num in "1") ls;;
    "2") pwd;;
    "3") who;;
    esac



}




## PRINCIPAL 
menu
