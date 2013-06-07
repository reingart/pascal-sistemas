# coding: utf8
# intente algo como

import os

def backup():
    # Copia de seguridad de la base de datos
    
    ruta = os.path.join (request.folder, "private" , "backup.csv") 
    arch = open (ruta, "wb")
    db.export_to_csv_file (arch)
    arch.close()
    
    return 'Backup Realizado'
    
def restauracion():
   
   # Restaura la base de datos de seguridad
    ruta = os.path.join (request.folder, "private" , "backup.csv") 
    arch = open (ruta, "rb")
   
    db.import_from_csv_file(arch)
   
    return 'Restauración Completada'
