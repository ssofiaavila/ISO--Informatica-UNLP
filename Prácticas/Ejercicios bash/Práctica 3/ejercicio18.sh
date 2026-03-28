#Crear un script que verifique cada 10 segundos si un usuario se ha loqueado en el sistema
#(el nombre del usuario será pasado por parámetro). Cuando el usuario finalmente se loguee,
#el programa deberá mostrar el mensaje ”Usuario XXX logueado en el sistema” y salir.


verificador_logeo(){
    if [$# -ne 1]
    then 
        echo "Es necesario ingresar el nombre de un usuario"
        exit 1
    fi
    else 
        logged=false
        seg=0
        while [$logged = false]
        do 
            while [ $seg -lt 10]
            do 
                let seg ++
            if [$(who | grep -w $1 | wc -l) -ne 0]; then
                echo "Usuario $1 logueado en el sistema"
                $logged = true
            fi 
        done
        return 0


}


## PROGRAMA PRINCIPAL
echo "Ingrese nombre de usuario"
read usuario 
verificador_logeo $usuario