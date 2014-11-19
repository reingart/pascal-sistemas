#!/bin/python
# coding: utf8

# programa para convertir un respaldo csv en inserts de web2py.
# modo de uso:
#   python convertir.py < backup.csv  >> ../controllers/setup.py 

import csv, sys

for line in sys.stdin:
    if line.startswith("TABLE"):
        # recortar el nombre de la tabla (sin el salto de linea)
        table = line[6:-2]
        cols = None
    elif cols is None:
        # luego del nombre de la tabla, siguen los nombres de las columnas:
        cols = list(csv.reader([line]))[0]
        # dejar solo el nombre del campo (sin la tabla)
        cols = [col[col.index(".")+1:] for col in cols]
    elif line:
        # convertir las filas a inserts de web2py:
        row = list(csv.reader([line]))[0]
        # convertir valores:
        for i, val in enumerate(row):
            if val.lower() == '<null>':
                row[i] = None
            if '.' in val:
                try:
                    row[i] = float(val)
                except:
                    pass
            else:
                try:
                    row[i] = int(val)
                except:
                    pass                    
        fields=','.join(["%s=%s" % (col, repr(val)) for (col, val) in zip(cols, row)])
        print "db.%s.insert(%s)" % (table, fields)
    else:
        table = None
