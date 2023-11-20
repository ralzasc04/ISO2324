@echo off
REM Menú con dos opciones.
REM Autor: Rocio Alzas Conde.
REM Fecha: 17/11/2023.

:inicio
set /p archivo="Dime el nombre de un archivo: "
if exist %archivo%(
	echo existe
	goto inicio
)else(
	echo > %archivo%
)
