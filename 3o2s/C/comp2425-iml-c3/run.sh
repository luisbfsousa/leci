#!/bin/bash

# Cores
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Diretório do script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
OUTPUT_PY="$SCRIPT_DIR/src/output.py"

# Escolher Python
if command -v python3 >/dev/null 2>&1; then
    PYTHON_CMD=python3
elif command -v python >/dev/null 2>&1; then
    PYTHON_CMD=python
else
    echo -e "${RED}Erro: Nenhum interpretador Python encontrado (python3 ou python)${NC}"
    exit 1
fi

# Verifica se output.py existe
if [ ! -f "$OUTPUT_PY" ]; then
    echo -e "${RED}Erro: output.py não encontrado em:${NC} $OUTPUT_PY"
    echo -e "${CYAN}Dica:${NC} compile primeiro o IML para gerar o arquivo."
    exit 1
fi

# Executa output.py
echo -e "${BOLD}${CYAN}Executando output.py com $PYTHON_CMD...${NC}"
echo
(cd "$SCRIPT_DIR/src" && $PYTHON_CMD output.py)
EXIT_CODE=$?

# Verifica resultado
echo
if [ $EXIT_CODE -eq 0 ]; then
    echo -e "${GREEN}Execução concluída com sucesso${NC}"
else
    echo -e "${RED}Erro ao executar output.py (código $EXIT_CODE)${NC}"
    exit $EXIT_CODE
fi
