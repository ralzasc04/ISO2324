@echo off
REM media de 3 números
REM Autor: Rocio Alzas Conde.
REM Fecha: 14/11/2023

Set /a suma=(%1 + %2 + %3)
Set /a division=(%suma%/3)

Echo La media de los numeros %1, %2 y %3  es %division%