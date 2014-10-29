# coding: utf8
# intente algo como
def index(): return dict(message="hello from cartelera.py")
def menu():
    response.title = "cartelera"
   
    
    return {}
   
    
def horarios():
    response.title = "Cartelera"
    response.subtitle="Horarios de las materias"   
    CARRERAID=1 #analisis de sistemas
    ANIO=1 #PRIMER AÑO
    CICLOID=5 #ciclo lectivo 2014
    q=db.materias.cursoid==ANIO
    q&=db.asignaturas.carreraid==CARRERAID
    q&=db.asignaturas.cicloid==CICLOID
    q&=db.asignaturas.materiaid==db.materias.materiaid
    q=db.materias.cursoid==ANIO
    q&=db.materias.materiaid==db.comisiones.materiaid
    q&=db.comisiones.comisionid==db.horarios.comisionid
    q&=db.horarios.horaid==db.horas.horaid
    q&=db.comisiones.personalid==db.personal.personalid 
    filas=db(q).select(db.materias.nombre,db.horarios.dia,db.horas.desde,db.horas.hasta,db.personal.nombre)


    
    return {'filas':filas}
        
def novedades():
    response.title = "cartelera"
    response.subtitle="Novedades"   
    return {}


def examenes():
    response.title = "Cartelera"
    response.subtitle="Exámenes Finales"   
    CARRERAID=1 #analisis de sistemas
    CICLOID=5 #ciclo lectivo 2014
    LLAMADO=1 #PRIMER LLAMADO
    EXAMEN_PERIODO=30 #EXAMEN DICIEMBRE 2014
    COMISION_PERIODO=33 #periodo2014
    
    q=db.asignaturas.carreraid==CARRERAID
    q&=db.asignaturas.cicloid==CICLOID
    q&=db.materias.materiaid==db.asignaturas.materiaid #OBTENEMOS COD Y NOMBRE DE MATERIA
    q&=db.cursos.cursoid==db.materias.cursoid #OBTENEMOS EL NOMBRE DEL CURSO
    #OBTENEMOS EL EXAMEN DE ESA MATERIA EN EL PERIODO DICIEMBRE 2014 Y EL PRIMER LLAMADO
    q&=db.materias.materiaid==db.examenes.materiaid
    q&=db.examenes.periodoid==EXAMEN_PERIODO
    q&=db.examenes.llamado==LLAMADO 
    #OBTENGO LA MATERIA CORRELATIVA DE LA ACTUAL
    q&=db.materias.materiaid==db.correlativas.materiaid
    #CONSULTAMOS COMISION ACTUAL DE LA MATERIA EN ESTE PERIODO 2014 PARA VER EL DOCENTE
    q&=db.materias.materiaid==db.comisiones.materiaid
    q&=db.comisiones.periodoid==COMISION_PERIODO
    q&=db.comisiones.personalid==db.personal.personalid
    filas=db(q).select(db.materias.codigo,db.materias.nombre,db.cursos.nombre, db.examenes.fecha,db.examenes.hora,db.correlativas.materiacorrelativa,db.personal.nombre)
    correla_map ={}
    for fila in filas:
        MATERIA=fila.correlativas.materiacorrelativa
        q=db.materias.materiaid==MATERIA
        materias=db(q).select(db.materias.codigo)
        for materia in materias:
            if fila.materias.codigo==materia.codigo: #SI EL COD DE MATERIA = COD DE CORRELA 
                correla_map[fila.materias.codigo] = '---' 
            else:
                correla_map[fila.materias.codigo] = materia.codigo
    return {'filas':filas,'correla_map':correla_map}
