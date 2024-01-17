#!/bin/bash
# Crea una agenda, enlazado con el archivo agenda.txt, con las opciones:
# a) Añadir una entrada.
# b) Buscar por dni.
# c) Ver la agenda completa.
# d) Eliminar todas las entradas de la agenda.
# e) Finalizar
# Autor: Rocío Alzas Conde.
# Fecha: 17/01/2024.

while true ; do
	echo "Agenda telefónica: "
	echo "a) Añadir una entrada."
	echo "b) Buscar por DNI."
	echo "c) Ver la agenda completa."
	echo "d) Eliminar todas las entradas de la agenda."
	echo "e) Finalizar."
	read -p "¿Qué opción deseas?(a,b,c,d o e) " op
	
	case $op in 
	a)
	clear
	echo "Has selecionado la opcion a (Añadir)."
		read -p "Introduce el DNI de la persona a añadir: " dni
		
		dni1=$(grep -w $dni agenda.txt | cut -d ":" -f "1")
		
		if [ ! $dni1 > /dev/null ]; then
			echo "La persona que quiere añadir no está añadida."
			read -p "Introduce el nombre de la persona: " nom
			read -p "Introduce los apellidos de la persona: " ape
			read -p "Introduce la localidad de la persona: " loc
			echo $dni:$nom:$ape:$loc >> agenda.txt
			echo "Se ha añadido perfectamente."
		else
			echo "La persona que quiere añadir ya está en la agenda."
		fi
	;;
	
	b)
	clear
	echo "Has selecionado la opcion b (Buscar)."
		read -p "Introduce el DNI de la persona a buscar: " dni
		
		dni1=$(grep -w $dni agenda.txt | cut -d ":" -f "1")
		nom=$(grep -w $dni agenda.txt | cut -d ":" -f "2")
		ape=$(grep -w $dni agenda.txt | cut -d ":" -f "3")
		loc=$(grep -w $dni agenda.txt | cut -d ":" -f "4")
		
		if [ ! $dni1 > /dev/null ]; then
			echo "La persona que quiere buscar no está añadida a la agenda."
		else
			echo "La persona con DNI número $dni es: $nom $ape, y vive en $loc"
		fi
	;;
	
	c)
	clear
	echo "Has selecionado la opcion c (Ver)."
		
		if [ -s agenda.txt ]; then
			echo "Contenido del archivo:"
			echo $(cat agenda.txt)
		else
			echo "Agenda vacía."
		fi
	;;
	
	d) 
	clear
	echo "Has selecionado la opcion d (Eliminar)."
		
		if [ -s agenda.txt ]; then
			> agenda.txt
			echo "Se ha vaciado el archivo."
		else
			echo "Ya está vacio el archivo."
		fi
	;;
	
	e)
	echo "Has selecionado la opcion e (Finalizar)."
	echo "Vas a salir del script."
	exit 0
	;;
	
	*)
	clear
	echo "No has seleccionado ninguna de las opciones."
	echo "Vuelve a leer las opciones y seleciona una de ellas."
	;;
	esac
done
