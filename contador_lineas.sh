#!/bin/bash

echo "##### CONTADOR DE LINEAS ######"

read -p "Especifique el archivo del que quiera saber el numero de lineas: " archivo

echo -n "El numero de lineas es: " 

wc -l $archivo | cut -d " " -f 1
