#!/bin/bash

echo "Copias de seguridad"

read -p "Escriba la ruta completa del lugar donde se almacenara la copia: " almacen

read -p "Escriba ahora el fichero al que hacer el backup: " fichero

tar -czf $almacen$(date -u +%d_%m_%Y).tar $fichero
