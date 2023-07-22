#!/bin/bash

clear

echo "Se instalaran paquetes como Nmap o las Networks tools para realizar alguinas accciones"
echo "Por lo que debe ejecutar el script como permisos de root : sudo bash menu.sh"
echo "--------------------------"
echo "Pulse Intro para confirmar"
read


#Actualización de repositorios 

apt update && apt upgrade -y

#Instalación de paquetes 

sudo apt install nmap -y
sudo apt install net-tools -y

while :

do

clear
echo "----------MENÚ DE RED----------"
echo "========================"
echo "1.Enciende la Interfaz"
echo "2.Apaga la Interfaz"
echo "3.Reinicia la Interfaz"
echo "4.Mostrar interfaces"
echo "5.Mostrar Puertos Abiertos"
echo "6.Comprobar conexión a Internet"
echo "99.Salir"
echo "==============================="
echo -n "Escoge una opción:"
read opcion

case $opcion in

1)
/etc/init.d/network-manager start
;;

2)
/etc/init.d/network-manager stop
;;

3)
/etc/init.d/network-manager restart
;;

4)
ifconfig
;;


5)
nmap localhost | awk 'NR>4{print $1" "$2" "$3}' | sed -e "$ d"
;;

6)

#Asignas el valor del ping a la variable resultado
resultado=$(ping -c 5 8.8.8.8)

#IF que comprueba el codigo de salida de $ para ver errores
if [ $? -eq 0 ]; then
    echo "Estas en la red de redes :) "
else
    echo "No se pudo establecer conexión a Internet :("
fi
sleep 2
;;



99)
exit
;;


*)
echo "Opción no valida"
sleep 1


esac
done
