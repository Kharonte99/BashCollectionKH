#!/bin/bash

clear

while :

do

clear

echo "-----GESTION DE USUARIOS-----"
echo "1.Añadir usuario"
echo "2.Eliminar usuario"
echo "3.Mostrar usuarios locales (UID 1000+)"
echo "4.Mostrar todos los usuarios"
echo "99.Salir"
echo "-----------------------------"
echo "**************************************************************************************"
echo "Las opciones 3 y 4 tambien crearan un .txt en el directorio actual con la información."
echo "**************************************************************************************"
echo -n "Elige una opcion: "

read opcion

case $opcion in 

1)
echo -n "Escribe el nuevo usuario: "
read us
sudo adduser $us
clear
echo "Usuario "$us" añadido correctamente"
sleep 2
;;

2)
echo -n "Escribe el usuario a eliminar: "
read del
sudo deluser $del
clear
echo "Usuario " $del " eliminado"
sleep 2
;;

3)
awk -F: '$3 >= 1000 && $3 < 65534 {print $1}' /etc/passwd > localUsers.txt
echo "Fichero creado"
sleep 1
;;

4)
cut -d: -f1 /etc/passwd > allUsers.txt
echo "Fichero creado"
sleep 1
;;

99)
exit
;;

*)
echo "Escoga una opcion valida"
sleep 1
;;

esac

done
