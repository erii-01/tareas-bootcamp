import pathlib
from datetime import datetime

# Create folder
folder_name = f"folder_{datetime.now().strftime('%Y%m%d_%H%M%S')}"
pathlib.Path(folder_name).mkdir()
# Create 10 files
for i in range(10):
    contador=i+1
    file=f"file_{contador}_{datetime.now().strftime('%Y%m%d_%H%M%S')}.txt"
    file_path =f"{folder_name}/{file}"
    with open(file_path, 'w') as f:
        timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        f.write(f"Archivo {file} creado el {timestamp}")
print(f"Se crearon {contador} archivos en la carpeta {folder_name}")