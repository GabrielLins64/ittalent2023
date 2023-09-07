#!/bin/bash

read -p "Digite o tamanho da senha desejada: " tamanho

senha=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w"$tamanho" | head -n 1)

echo "Senha Gerada: $senha"

