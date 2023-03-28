##VERIFICAR SI UN DETERMINADO PROCESO ESTÁ EJECUTÁNDOSE 
SERVICE="nginx"
if pgrep -x "$SERVICE" >/dev/null
then
    echo "$SERVICE is running"
else
    echo "$SERVICE stopped"
    # uncomment to start nginx if stopped
    # systemctl start nginx
    # mail  
fi