# coding: utf8
# intente algo como
def index(): return dict(message="hello from setup_alumnos.py")
####### FUNCION DE PRUEBA---INSERT EN TABLA ALUMNOS---######

db1= DAL("postgres://luka:1234@127.0.0.1:5432/practica")

def insert_alumnos():
    
    filas= db1.executesql('SELECT * FROM alumnos', as_dict= True)
    
    for fila in filas:
    
        db.alumnos.insert(alumnoid= fila['alumnoid'], 
                            alumno= fila['alumno'], 
                            codigo= fila['codigo'], 
                            dni= fila['dni'], 
                            sexo= fila['sexo'], 
                            fechanacimiento= fila['fechanacimiento'], 
                            lugarnacimiento= fila['lugarnacimiento'], 
                            estadocivil= fila['estadocivil'], 
                            nacionalidad= fila['nacionalidad'], 
                            direccion= fila['direccion'], 
                            localidad= fila['localidad'], 
                            cp= fila['cp'])
        
    return {'filas': filas}
    
def insert_curso():
    
    filas= db1.executesql('SELECT * FROM cursos', as_dict= True)
    
    for fila in filas:
    
        db.cursos.insert(cursoid= fila['cursoid'], 
                            curso= fila['curso'],
                            codigo= fila['codigo'],
                            nivel= fila['nivel'],
                            anio= fila['año'],
                            seccion= fila['seccion'],
                            division= fila['seccion'],
                            orden= fila['orden'] )
        
    return {'filas': filas}
    
def insert_ciclo():
    
    filas= db1.executesql('SELECT * FROM ciclos', as_dict= True)
    
    for fila in filas:
    
        db.ciclos.insert(cicloid= fila['cicloid'], 
                            ciclo= fila['ciclo'], 
                            anio= fila['año'], 
                            detalle= fila['detalle'], 
                            desde= fila['desde'], 
                            hasta= fila['hasta'] )
        
    return {'filas': filas}
    
def insert_division():
    
    filas= db1.executesql('SELECT * FROM divisiones', as_dict= True)
    
    for fila in filas:
    
        db.divisiones.insert(divisionid= fila['divisionid'], 
                            division= fila['division'], 
                            codigo= fila['codigo'], 
                            cursoid= fila['cursoid'], 
                            cicloid= fila['cicloid'], 
                            numero= fila['numero'], 
                            letra= fila['letra'], 
                            turno= fila['turno'], 
                            anio= fila['año'] )
        
    return {'filas': filas}
    
def insert_niveles():
    
    filas= db1.executesql('SELECT * FROM niveles', as_dict= True)
    
    for fila in filas:
    
        db.niveles.insert(nivelid= fila['nivelid'], 
                            nivel= fila['nivel'], 
                            ciclo= fila['ciclo'], 
                            tipo= fila['tipo'], 
                            personalid= fila['personalid'] )
        
    return {'filas': filas}
    
def insert_materias():
    
    filas= db1.executesql('SELECT * FROM materias', as_dict= True)
    
    for fila in filas:
    
        db.materias.insert(materiaid= fila['materiaid'], 
                            materia= fila['materia'], 
                            resumen= fila['resumen'], 
                            cursoid= fila['cursoid'], 
                            catedraid= fila['catedraid'], 
                            codigo= fila['codigo'], 
                            orden= fila['orden'], 
                            optativa= fila['optativa'], 
                            analitico= fila['analitico'], 
                            requerida= fila['requerida'] )
        
    return {'filas': filas}
    
def insert_catedra():
    
    filas= db1.executesql('SELECT * FROM catedras', as_dict= True)
    
    for fila in filas:
    
        db.catedras.insert(catedraid= fila['catedraid'], 
                            catedra= fila['catedra'], 
                            informe= fila['informe'], 
                            boletin= fila['boletin'], 
                            analitico= fila['analítico'], 
                            espacio= fila['espacio'], 
                            abr= fila['abr'], 
                            calificacion= fila['calificacion'], 
                            horas= fila['horas'], 
                            minutos= fila['minutos'], 
                            nivelid= fila['nivelid'], 
                            codigo= fila['codigo'] )
        
    return {'filas': filas}
