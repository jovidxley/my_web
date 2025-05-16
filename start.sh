#!/usr/bin/env bash

# Salir inmediatamente si ocurre un error
set -e

# Mensaje opcional para ver en los logs
echo "Iniciando aplicación FastAPI con Uvicorn..."

# Usa el puerto asignado por Render o por defecto el 8000 en local
PORT=${PORT:-8000}

# Comando para ejecutar el servidor
uvicorn app.main:app --host 0.0.0.0 --port $PORT