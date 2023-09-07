#!/bin/bash

addition() {
  resultado=$(echo "$1 + $2" | bc)
  echo -e "Resultado: $1 + $2 = $resultado\n"
}

subtraction() {
  resultado=$(echo "$1 - $2" | bc)
  echo -e "Resultado: $1 - $2 = $resultado\n"
}

multiplication() {
  resultado=$(echo "$1 * $2" | bc)
  echo -e "Resultado: $1 * $2 = $resultado\n"
}

division() {
  resultado=$(echo "$1 / $2" | bc -l)
  echo -e "Resultado: $1 / $2 = $resultado\n"
}

read_numbers() {
  read -p "Digite o primeiro número: " num1
  read -p "Digite o segundo número: " num2
}

menu() {
  clear
  while true; do
    echo -e "Calculadora DevOps!\n"
    echo "1. Adição"
    echo "2. Subtração"
    echo "3. Multiplicação"
    echo "4. Divisão"
    echo -e "5. Sair\n"

    read -p "Escolha uma operação: " opcao
  
    case $opcao in
      1)
        read_numbers
        clear
        addition "$num1" "$num2"
        ;;
      2)
        read_numbers
        clear
        subtraction "$num1" "$num2"
        ;;
      3)
        read_numbers
        clear
        multiplication "$num1" "$num2"
        ;;
      4)
        read_numbers
        clear
        division "$num1" "$num2"
        ;;
      5)
        clear
        echo "Fechando..."
        exit 0
        ;;
      *)
        clear
        echo -e "Por favor escolha uma opção de 1 a 5!\n"
        ;;
    esac
  done
}

menu

