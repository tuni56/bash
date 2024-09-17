#!/bin/bash

read -p  "Cual es el usuario que buscas: " eleccion

resultado=$(cat /etc/passwd | awk -F ":" '{print $1}' | grep $eleccion)

if test $resultado == $eleccion; then
    echo "Usuario $eleccion encontrado"
else
    echo "No se encuentra el usuario"
fi
