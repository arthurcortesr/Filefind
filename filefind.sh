#!/bin/bash

# Definindo códigos de cor ANSI
COR_PKAS="\033[38;5;220m"  # FEB63E
COR_FILE="\033[38;5;197m"  # F5055C
COR_VERDE='\e[92m'  # 00FF00
COR_ERRO='\e[38;5;196m'  # E10406
RESET="\033[0m"  # Reset para as configurações padrão de cor

# Verifica se o número correto de argumentos foi fornecido
if [ "$#" -ne 2 ]; then
    echo "------------------------------------------------------------------------------------"
    echo -e "${COR_PKAS}Pk's Academy${RESET} - ${COR_FILE}File Find${RESET}"
    echo "------------------------------------------------------------------------------------"
    echo "Modo de uso: $0 <alvo> <tipo de arquivo>"
    echo "------------------------------------------------------------------------------------"
    echo "Exemplo: $0 businesscorp.com.br php"
    echo "------------------------------------------------------------------------------------"
    exit 1
fi

alvo="$1"
extensao="$2"

# Exibe a mensagem de cabeçalho
echo "------------------------------------"
echo -e "| ${COR_PKAS}Pk's Academy${RESET} - ${COR_FILE}File Find${RESET} |"
echo "------------------------------------"

# Usando os parâmetros fornecidos para criar a string de pesquisa
search_string="site:$alvo+ext:$extensao"

# Executando a pesquisa usando o Lynx
resultado=$(lynx --dump "https://google.com/search?&q=$search_string" | grep ".$extensao" | cut -d "=" -f2 | egrep -v "site|google" | sed 's/...$//')

# Verifica se houve algum resultado
if [ -z "$resultado" ]; then
    echo -e "${COR_ERRO}Nenhum resultado encontrado.${RESET}"
else
    echo -e "${COR_VERDE}$resultado${RESET}"
fi
