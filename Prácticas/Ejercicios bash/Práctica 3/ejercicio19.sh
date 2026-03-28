#Escribir un Programa de “Menu de Comandos Amigable con el Usuario” llamado menu, el
#cual, al ser invocado, mostrará un menú con la selección para cada uno de los scripts creados
#en esta práctica. Las instrucciones de como proceder deben mostrarse junto con el menú.
#El menú deberá iniciarse y permanecer activo hasta que se seleccione Salir. Por ejemplo:

#MENU DE COMANDOS
#03. Ejercicio 3
#12. Evaluar Expresiones
#13. Probar estructuras de control
#Ingrese la opción a ejecutar: 03

#!/bin/bash

menu(){
    opcion=-1
    cd /home/mis_bash
    while [$opcion -ne 0]
    do
        echo "Elija el script que deseea ejecutar"
        echo "ejercicio3.sh"
        echo "ejercicio12.sh"
        echo "ejercicio13.sh"
        echo "0: salir del menu"
        read opcion
        find -iname "$opcion" | bash
    done 
    return 0
}

##programa principal 
menu
