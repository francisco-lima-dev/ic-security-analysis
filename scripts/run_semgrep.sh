#!/bin/bash

set -e

if [ -z "$1" ]; then
    echo "Erro: Informe a URL do repositório"
    echo "Uso: ./run_semgrep.sh <repo_url>"
    exit 1
fi

REPO_URL=$1

echo "Clonando repositório..."
REPO_NAME=$(basename $REPO_URL)
git clone "${REPO_URL}" $REPO_NAME

mkdir -p /workspace/results


cd $REPO_NAME

echo "Rodando Semgrep..."
semgrep scan --config=auto --json --output /workspace/results/$REPO_NAME.json

mkdir -p /workspace/treated_results

cat /workspace/results/$REPO_NAME.json | python3 -m json.tool>/workspace/treated_results/treated_$REPO_NAME.json 

echo "Análise finalizada!"