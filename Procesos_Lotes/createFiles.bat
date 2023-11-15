@echo off
REM Menú con dos opciones.
REM Autor: Rocio Alzas Conde.
REM Fecha: 15/11/2023.

Title User Input
Echo Presiona 1 para crear un archivo *.txt
Echo Presiona 2 para crear un archivo *.bat
Set /p crear=
if %crear% == 1 goto archivo.txt
if %crear% == 2 goto archivo.bat
:archivo.txt
Set /p name="Introduzca el nombre del archivo: "
Set /p ruta="Introduzca la ruta donde crearlo: "
echo > %ruta%\%name%.txt
echo El archivo se ha creado perfectamente.
pause
exit
:archivo.bat
Set /p name="Introduzca el nombre del archivo: "
Set /p ruta="Introduzca la ruta donde crearlo: "
echo > %ruta%\%name%.bat
echo El archivo se ha creado perfectamente.
pause
exit