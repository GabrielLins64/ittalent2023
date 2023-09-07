#!/bin/bash

for i in {1..10}; do
  nome_diretorio="diretorio_$i"
  mkdir "$nome_diretorio"
  echo "Diretório '$nome_diretorio' criado com sucesso."
done

