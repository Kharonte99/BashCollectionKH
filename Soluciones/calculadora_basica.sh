#!/bin/bash
echo "----CALCULADORA----"
read -p "Primer numero: " numero1
read -p "Segundo numero: " numero2

echo "La suma es: "$(($numero1 + $numero2))
echo "La resta es: "$(($numero1 - $numero2))
echo "La multiplicacion es: "$(($numero1 * $numero2))
echo "La division es: "$(($numero1 / $numero2))
