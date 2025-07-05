#!/bin/bash

# Cores
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

# Diretório base do projeto e diretório do IML
PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/" && pwd )"
SRC_IML_DIR="$PROJECT_DIR/src/Iml"

# Verifica argumento
if [ $# -eq 0 ]; then
    echo -e "${RED}Erro:${NC} Por favor, forneça o caminho para um ficheiro IML."
    echo -e "${CYAN}Uso:${NC} ./compile.sh examples/min-01.iml"
    exit 1
fi

# Caminho do ficheiro de entrada (relativo ao diretório onde o script foi chamado)
INPUT_FILE="$1"

# Caminho absoluto do ficheiro
INPUT_PATH="$(realpath "$INPUT_FILE" 2>/dev/null)"

# Verifica se o ficheiro existe
if [ ! -f "$INPUT_PATH" ]; then
    echo -e "${RED}Erro:${NC} Ficheiro '${INPUT_FILE}' não encontrado."
    exit 1
fi

# Verifica extensão
if [[ "$INPUT_FILE" != *.iml ]]; then
    echo -e "${CYAN}Aviso:${NC} O ficheiro '${INPUT_FILE}' não tem extensão .iml."
fi

echo -e "${BOLD}${CYAN}Compilando programa IML: ${NC}$INPUT_FILE"
echo

# Executa o antlr4-run dentro de src/Iml
cd "$SRC_IML_DIR" || { echo -e "${RED}Erro:${NC} Não foi possível aceder a $SRC_IML_DIR"; exit 1; }

# Compilar e capturar a saída
output=$(cat "$INPUT_PATH" | antlr4-run 2>&1)
exit_code=$?

# Mostrar saída do compilador
echo "$output"
echo

# Verifica se compilação foi bem sucedida
if [ $exit_code -eq 0 ] && [[ "$output" == *"Program compiled successfully"* ]] && [ -f "$PROJECT_DIR/src/output.py" ]; then
    echo -e "${GREEN}Compilação concluída com sucesso${NC}"
    echo -e "Ficheiro de saída gerado em ${CYAN}src/output.py${NC}"
else
    echo -e "${RED}Erro na compilação${NC}"
    exit 1
fi
