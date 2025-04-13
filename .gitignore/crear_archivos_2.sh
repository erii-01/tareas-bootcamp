#!/bin/bash

carpeta="carpeta_$(date +%Y%m%d_%H%M%S)"

if [ -d "carpeta" ];then
    remove -r "$carpeta"
fi
mkdir "$carpeta"
for i in {1..5}; do
    archivo="archivo_${i}_$(date +%Y%m%d_%H%M%S).txt"
    touch "$carpeta/$archivo"
    echo "Contenido de archivo $archivo" > "$carpeta/$archivo"
done
echo "carpeta $carpeta creada con $i archivos dentro"