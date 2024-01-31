#!/bin/bash
# Five or more.
# Autor: Rocio Alzas Conde.
# Fecha: 29/01/2024.

if [ $# -ne 2 ]; then
	echo "No has metido el número de parámetros correcto."
	exit 0
fi

if [ -f $1 ]; then
	echo "Fichero existente, introduce uno que no exista."
	exit 1
fi

if [ ! -d $2 ]; then
	echo "Directorio no extistente, introduce uno que exista."
	exit 2
fi

if [ ! "$(ls $2)" ]; then
	echo "Directorio vacio, introduce uno que tenga contenidos."
	exit 3
fi

echo "Autor - Rocío Alzas Conde."

fichero=$(ls $2/*.txt)

for archivo in $fichero; do
    lin=$(cat $archivo | wc -l)
    echo $lin
    if [ $lin -ge 5 ]; then
    	echo "Nombre del archivo: $archivo"
        echo $archivo >> $1
   		num_palabras=$(wc -w < $archivo)
		cuenta_palabras="$archivo.q"
		echo "El fichero original tiene $num_palabras palabras." | cat - $archivo > $cuenta_palabras
    fi
done

num_archivo=$(cat $1 | wc -l)
echo "Número de archivos: $num_archivo" >> $1


