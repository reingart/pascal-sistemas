# coding: utf8
# intente algo como
def index(): return dict(message="hello from setup_alumnos.py")
####### FUNCION DE PRUEBA---INSERT EN TABLA ALUMNOS---######

db1= DAL("postgres://luka:1234@127.0.0.1:5432/practica")

def insert_alumnos():
    
    filas= db1.executesql('SELECT * FROM alumnos', as_dict= True)
    
    for fila in filas:
    
        db.alumnos.insert(alumnoid= fila['alumnoid'], 
                            nombre= fila['alumno'], 
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
    
    
def insert_ciclo():
    
    filas= db1.executesql('SELECT * FROM ciclos', as_dict= True)
    
    for fila in filas:
    
        db.ciclos.insert(cicloid= fila['cicloid'], 
                            nombre= fila['ciclo'], 
                            anio= fila['año'], 
                            detalle= fila['detalle'], 
                            desde= fila['desde'], 
                            hasta= fila['hasta'] )
        
    return {'filas': filas}
    
def insert_division():
    
    filas= db1.executesql('SELECT * FROM divisiones', as_dict= True)
    
    for fila in filas:
    
        db.divisiones.insert(divisionid= fila['divisionid'], 
                            descripcion= fila['division'], 
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
                            descripcion= fila['nivel'], 
                            ciclo= fila['ciclo'], 
                            tipo= fila['tipo'], 
                            personalid= fila['personalid'] )
        
    return {'filas': filas}
    
def insert_materias():
    
    filas= db1.executesql('SELECT * FROM materias', as_dict= True)
    
    for fila in filas:
    
        db.materias.insert(materiaid= fila['materiaid'], 
                            nombre= fila['materia'], 
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
                            nombre= fila['catedra'], 
                            informe= fila['informe'], 
                            boletin= fila['boletin'], 
                            analitico= fila['analítico'], 
                            espacio= fila['espacio'], 
                            abr= fila['abr'], 
                            calificacion= fila['calificacion'], 
                            horas= fila['horas'], 
                            minutos= fila['minutos'], 
                            nivelid= fila['nivelid'])
        
    return {'filas': filas}
    
def insert_carrera():
    
    filas= db1.executesql('SELECT * FROM carreras', as_dict= True)
    
    for fila in filas:
    
        db.carreras.insert(carreraid= fila['carreraid'], 
                            nombre= fila['carrera'] )
                            
        
    return {'filas': filas}
    
def insert_planestudio():
    
    filas= db1.executesql('SELECT * FROM planesestudio', as_dict= True)
    
    for fila in filas:
    
        db.planesestudio.insert(planestudioid= fila['planestudioid'], 
                            descripcion= fila['planestudio'], 
                            aprobadopor= fila['aprobadopor'], 
                            carreraid= fila['carreraid'], 
                            desde= fila['desde'], 
                            hasta= fila['hasta'] )
        
    return {'filas': filas}
    
def insert_asignaturas():
    
    filas= db1.executesql('SELECT * FROM asignaturas', as_dict= True)
    
    for fila in filas:
    
        db.asignaturas.insert(asignaturaid= fila['asignaturaid'], 
                            nombre= fila['asignatura'], 
                            materiaid= fila['materiaid'], 
                            cursoid= fila['cursoid'], 
                            carreraid= fila['carreraid'], 
                            planestudioid= fila['planestudioid'], 
                            orden= fila['orden'], 
                            horas= fila['horas'], 
                            teorica= fila['teorica'], 
                            practica= fila['práctica'], 
                            optativa= fila['optativa'], 
                            faltas1r= fila['faltas1r'],
                            faltaslibre= fila['faltaslibre'], 
                            faltasrecursa= fila['faltasrecursa'], 
                            cicloid= fila['cicloid'] )
        
    return {'filas': filas}
    
def insert_calendario():
    
    filas= db1.executesql('SELECT * FROM calendario', as_dict= True)
    
    for fila in filas:
    
        db.calendarios.insert(calendarioid= fila['id'], 
                            fecha= fila['fecha'], 
                            feriado= fila['feriado'], 
                            mensaje= fila['mensaje'] )
        
    return {'filas': filas}
    
def insert_calificacion():
    
    filas= db1.executesql('SELECT * FROM calificaciones', as_dict= True)
    
    for fila in filas:
    
        db.calificaciones.insert(calificacionid= fila['calificacionid'], 
                            descripcion= fila['calificacion'],   
                            condicion= fila['condicion'], 
                            ayuda= fila['ayuda'], 
                            equivalencia= fila['equivalencia'], 
                            previa= fila['previa'] )
        
    return {'filas': filas}
    
    
def insert_periodo():
    
    filas= db1.executesql('SELECT * FROM periodos', as_dict= True)
    
    for fila in filas:
        print fila
        db.periodos.insert(periodoid= fila['periodoid'], 
                            descripcion= fila['periodo'], 
                            nivelid= fila['nivelid'], 
                            cicloid= fila['cicloid'], 
                            mes= fila['mes'], 
                            anio= fila['anio'], 
                            trimestre= fila['trimestre'], 
                            condicion= fila['condicion'], 
                            cuatrimestre= fila['cuatrimestre'], 
                            semestre= fila['semestre'], 
                            orden= fila['orden'], 
                            codigo= fila['codigo'],
                            inicio= fila['inicio'], 
                            cierre= fila['cierre'], 
                            tipo= fila['tipo'],
                            dias= fila['dias'],
                            secuencia= fila['secuencia'], 
                            notaminima= fila['notaminima'] )
        
    return {'filas': filas}
    
def insert_titulos():
    
    filas= db1.executesql('SELECT * FROM titulos', as_dict= True)
    
    for fila in filas:
    
        db.titulos.insert(tituloid= fila['tituloid'], 
                            nombre= fila['titulo'], 
                            planestudioid= fila['planestudioid'], 
                            carreraid= fila['carreraid'], 
                            cursoid= fila['cursoid'] )
        
    return {'filas': filas}
    

    
def insert_nota():
    
    filas= db1.executesql('SELECT * FROM notas', as_dict= True)
    
    for fila in filas:
    
        db.notas.insert(notaid= fila['notaid'], 
                            alumnoid= fila['alumnoid'], 
                            materiaid= fila['materiaid'], 
                            periodoid= fila['periodoid'], 
                            calificacionid= fila['calificacionid'], 
                            nota= fila['nota'], 
                            descripcion= fila['descripcion'], 
                            establecimiento= fila['establecimiento'],
                            observaciones= fila['observaciones'], 
                            fecha= fila['fecha'], 
                            libro= fila['libro'], 
                            folio= fila['folio'], 
                            alta= fila['alta'], 
                            web= fila['web'],
                            turno= fila['turno'] )
        
    return {'filas': filas}
    
def insert_correlativas():
    
    filas= db1.executesql('SELECT * FROM correlativas', as_dict= True)
    
    for fila in filas:
    
        db.correlativas.insert(correlativaid= fila['correlativaid'], 
                            materiaid1= fila['materiaid1'], 
                            materiaid2= fila['materiaid2'], 
                            planestudioid= fila['planestudioid'] )
        
    return {'filas': filas}
    
    
    
def insert_comision():
    
    filas= db1.executesql('SELECT * FROM comisiones', as_dict= True)
    
    for fila in filas:
    
        db.comisiones.insert(comisionid= fila['comisionid'], 
                            nombre= fila['comision'], 
                            divisionid= fila['divisionid'], 
                            periodoid= fila['periodoid'], 
                            materiaid= fila['materiaid'], 
                            faltas1r= fila['faltas1r'], 
                            faltas2r= fila['faltas2r'], 
                            faltaslibre= fila['faltaslibre'], 
                            faltasrecursa= fila['faltasrecursa'] )
        
    return {'filas': filas}
    
def insert_inscripcioncomision():
    
    filas= db1.executesql('SELECT * FROM inscripcionescomision', as_dict= True)
    
    for fila in filas:
    
        db.inscripcionescomision.insert(inscripcionid= fila['inscripcionid'], 
                            alumnoid= fila['alumnoid'], 
                            comisionid= fila['comisionid'], 
                            alta= fila['alta'], 
                            baja= fila['baja'], 
                            condicion= fila['condicion'] )
        
    return {'filas': filas}
    
def insert_situaciones():
    
    filas= db1.executesql('SELECT * FROM situaciones', as_dict= True)
    
    for fila in filas:
    
        db.situaciones.insert(situacionid= fila['situacionid'], 
                            detalle= fila['situacion'] )
                            
        
    return {'filas': filas}
    
def insert_inscripcionexamen():
    
    filas= db1.executesql('SELECT * FROM inscripcionesexamen', as_dict= True)
    
    for fila in filas:
    
        db.inscripcionesexamen.insert(inscripcionid= fila['inscripcionid'], 
                            alumnoid= fila['alumnoid'], 
                            examenid= fila['examenid'], 
                            condicion= fila['condicion'], 
                            alta= fila['alta'], 
                            baja= fila['baja'], 
                            confirmar= fila['confirmar'], 
                            valido= fila['valido'] )
        
    return {'filas': filas}

def insert_inscripciondivision():
    
    filas= db1.executesql('SELECT * FROM inscripcionesdivision', as_dict= True)
    
    for fila in filas:
    
        db.inscripcionesdivision.insert(inscripcionid= fila['inscripcionid'], 
                            alumnoid= fila['alumnoid'], 
                            divisionid= fila['divisionid'], 
                            alta= fila['alta'], 
                            baja= fila['baja'], 
                            condicion= fila['condicion'] )
        
    return {'filas': filas}
