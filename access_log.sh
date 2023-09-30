#!/bin/bash

# Crear el archivo de registro si no existe
touch acceso.log

# Obtener la fecha actual
fecha_actual=$(date "+%Y-%m-%d %H:%M:%S")

# Contar las líneas en el archivo de registro y en la salida de last
lineas_act=$(cat acceso.log | wc -l)
lineas_log=$(last | wc -l)

# Comparar las líneas para determinar si hay cambios
if [ $lineas_act -lt $lineas_log ]; then
        last >> acceso.log
        echo "Acceso registrado el $fecha_actual" >> acceso.log
else
        echo "No hay cambios"
fi

