#!/bin/bash
folder="folder_$(date +%Y%m%d_%H%M%S)"

#If the folder exist, delete it
if [ -d "$folder" ]; then
    rm -r "$folder"
fi
#Create folder
mkdir "$folder"
#Create 10 files with date and time in their content
for i in {1..10}; do
    file="file_${i}_$(date +%Y%m%d_%H%M%S).txt"
    touch "$folder/$file"
    echo "Contenido del archivo $file" > "$folder/$file"
done

echo "Folder '$folder' created with 10 files inside."
