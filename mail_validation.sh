#!/bin/bash

echo "Validacion de mail"

read -p "Ingrese el correo: " correo

patron="^[a-z]+@[a-z]+\.[a-z]{2,}$"

if [[ $correo =~ $patron ]]; then
	echo "El correo $correo es valido"
else
	echo "El correo $correo es invalido"
fi
