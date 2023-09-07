#!/bin/bash

qtd_palavras=$(wc -w < "$1")
echo "O arquivo tem $qtd_palavras palavras."

