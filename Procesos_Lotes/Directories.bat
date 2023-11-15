@echo off
REM Estructura condicional
REM Autor: Rocio Alzas Conde.
REM Fecha: 15/11/2023.

Title Menu condicional.
Echo Para crear un fichero con un nombre, pulse 1.
Echo Para mostrar el arbol de directorios de la carpeta usuario, pulse 2.
Echo Para mostrar los archivos con extension .txt, pulse 3.
Echo Para crear los directorios alfredoff, marinapg y ramonam en el directorio actual, pulse 4.
Echo Para copiar el contenido de tu carpeta usuario en el escritorio, pulse 5.

Set /p menu="Elija una de las opciones anteriores (1, 2, 3, 4 o 5): "
if %menu%== 1 goto fichero
if %menu%== 2 goto arbol
if %menu%== 3 goto archivos.txt
if %menu%== 4 goto directorios
if %menu%== 5 goto copiar

:fichero
Set /p name="Introduzca el nombre del archivo: "
Set /p ruta="Introduzca la ruta donde crearlo: "
echo > %ruta%\%name%.txt
echo El archivo se ha creado perfectamente.
pause
exit

:arbol
tree %USERPROFILE%
pause
exit

:archivos.txt
dir /S C:\..\..\..\..\*.txt
pause
exit

:directorios
mkdir alfredoff marinapg ramona
Echo Carpetas creadas prefectamente:
dir 
pause
exit

:copiar
xcopy /S /E %USERPROFILE% C:\Copia
Echo Copia hecha:
tree /F C:\Copia
pause
exit