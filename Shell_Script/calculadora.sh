#!/bin/bash
# Calculadora.sh
# Autor: Rocio Alzas Conde.
# Fecha: 24 enero 2024.
clear
echo "Autor - Rocio Alzas Conde"
echo ""

if [ $# -ne 2 ]; then
	echo "Número de parametros incorrecto"
	exit
fi
if [ -f $1 ]; then
	echo "Fichero existente"
	exit
fi

for ((i=1;i<=$2;i++)); do
	echo "S - Suma."
	echo "R - Resta."
	echo "M - Multiplicación."
	echo "D - División."
	echo "X - Salir."
	read -p "¿Qué operación quieres realizar (S, R, M, D, X)? " op 
	read -p "Introduce el primer número: " op1
	read -p "Introduce el segundo número: " op2
	
	case $op in
		S)
		clear
		echo "Has seleccionado la operacion Suma."
			resuls=$(($op1+$op2))
			operacions="$op $op1 $op2"
			echo $operacions >> $1
			echo $operacions
			echo "El resultado es $resuls"
		;;
	
		R)
		clear
		echo "Has seleccionado la operacion Resta."
			resulr=$(($op1-$op2))
			operacionr="$op $op1 $op2"
			echo $operacionr >> $1
			echo $operacionr
			echo "El resultado es $resulr."
		;;
		
		M)
		clear
		echo "Has seleccionado la operacion Multiplicación."
			resulm=$(($op1*$op2))
			operacionm="$op $op1 $op2"
			echo $operacionm >> $1
			echo $operacionm
			echo "El resultado es $resulm"
		;;
		
		D)
		clear
		echo "Has seleccionado la operacion División"
			resuld=$(($op1/$op2))
			operaciond="$op $op1 $op2"
			echo $operaciond > $1
			echo $operaciond
			echo "El resultado es $resuld"
		;;
		
		X)
		echo "Saliendo de la calculadora."
		exit
		;;
	
		*)
	 	echo "Operacion incorrecta."
	 	echo "Vuelve a leer las opciones y selecciona una de ellas."
		;;
	
	esac
done

ruta=$(realpath $1)
echo $ruta
echo ""

exit
