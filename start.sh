#!/bin/bash

# Funcion para instalar requerimientos y ejecutar main.py
function start_project {
  project_path=$1
  echo "Instalando dependencias para $project_path"

  # Verificar si el archivo requirements.txt existe en la carpeta
  if [ -f "$project_path/requirements.txt" ]; then
    pip install -r "$project_path/requirements.txt"
  else
    echo "No se encontraron requerimientos en $project_path"
  fi

  # Iniciar el main.py si existe
  if [ -f "$project_path/main.py" ]; then
    echo "Iniciando $project_path/main.py"
    python3 "$project_path/main.py" &
  else
    echo "No se encontró main.py en $project_path"
  fi
}

# Lista de proyectos
projects=("mensajeria" "wifi")

# Recorrer cada proyecto y ejecutar la función start_project
for project in "${projects[@]}"; do
  start_project "/app/$project"
done

# Esperar a que todos los procesos terminen
wait
