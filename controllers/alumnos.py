# coding: utf8
# try something like




#@auth.requires_login()

def index(): 
    "menu alumnos"
    return dict ()

@auth.requires_login()
@auth.requires_membership(role='alumnos')
def ficha():
           
    # obtengo el registro del alumno ya registrado como usuario 
    
    q = db.alumnos.user_id== auth.user_id
    
    fila = db(q).select( db.alumnos.nombre, db.alumnos.fechanacimiento, db.alumnos.estadocivil,
                         db.alumnos.foto, db.alumnos.email1, db.alumnos.ingreso,
                         db.alumnos.localidad).first()
                         
    return dict (alumno=fila)
    
#@auth.requires_login()


@auth.requires_login()
def ingreso():
    db.alumnos.user_id.default= auth.user_id
    subtitulo= T ('Complete el formulario por favor...')
    form=SQLFORM(db.alumnos)
    #db.auth_membership.insert(auth_membership.user_id== db.auth_id, auth_membership.group_id== auth_group.id)
    if form.accepts(request.vars,session):
        grupo_id = db(db.auth_group.name=='alumnos').first().id
        db.auth_membership.insert(user_id=auth.user_id, group_id=grupo_id)
        #agrego al alumno y su id de registro en el grupo alumnos
        response.flash='Usted fue agregado como alumno...'
    elif form.errors: 
        response.flash='Hay errores en el formulario'
    else:
        response.flash='Por favor, complete el formulario'
        
    return dict (form=form, sub=subtitulo)
    
    
    

def busqueda():
    # armo un formulario para buscar alumno por su dni
    form = SQLFORM.factory(
        Field("dni", "integer"),
        Field("nombre", "string"),
        )
    q= db.alumnos.id>0
    if form.accepts(request.vars, session):
        # buscar el alumno
        q = db.alumnos.dni == form.vars.dni
        q&= db.alumnos.nombre == form.vars.nombre
        alumno = db(q).select().first()
        if alumno:
            # encontrado, redirigo al menu alumnos en index 
            redirect(URL(f=index, vars={'alumnoid': alumno.alumnoid}))
            redirect(URL(f=examenes, vars={'alumnoid': alumno.alumnoid}))
            redirect(URL(f=parciales, vars={'alumnoid': alumno.alumnoid}))
            
        else:
            response.flash = "Alumno no encontrado"
    #response.view = "generic.html"  # HACER una vista de verdad
    return dict (form = form)

def horarios():
    q= db.horarios.horaid==db.horas.horaid
    q &= db.horarios.comisionid== db.comisiones.comisionid
    q &= db.comisiones.personalid== db.personal.personalid
    q &= db.comisiones.materiaid== db.materias.materiaid
    q &= db.comisiones.divisionid== db.divisiones.divisionid
    filas= db(q).select(db.horas.hora, db.personal.nombre, db.materias.nombre, db.divisiones.divisionid, db.horarios.dia)
    
    
    horario = {'lunes':{},'martes':{},'miercoles':{},'jueves':{},'viernes':{}}
    # horario es una estructura cuya clave es el dia y el valor es otro diccionario....
    #  {'lunes': {1: fila} ... }
    for fila in filas:
        horario[fila.horarios.dia].setdefault(fila.horas.hora, {})[fila.divisiones.divisionid]= fila
        
    return dict (horario=horario)
    
   
        
    
def inasistencias():
    q = db.alumnos.user_id== auth.user_id
    q &= db.faltas.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescomision.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    q &= db.faltas.comisionid== db.comisiones.comisionid
    q &= db.comisiones.personalid== db.personal.personalid
    q &= db.faltas.inasistenciaid== db.inasistencias.inasistenciaid
    
    falta= db(q).select(db.alumnos.nombre, db.comisiones.nombre, db.faltas.cantidad, db.inasistencias.descripcion, db.faltas.fecha)
   
    
    return dict (falta=falta)
    
def examenes():
    # obtengo el parámetro pasado por variable en la url
    alumnoid = request.vars['alumnoid']
    # busco el alumno
    alumno = db.alumnos[alumnoid]
    # obtengo la carrera / plan de estudio
    #carreraid = alumno.carreraid ...
    
    # busco las materias:
    q = db.materias.materiaid>0  # HACER: filtrar por carrera/plan de estudio
    orden = db.materias.materiaid    # HACER: mejorar el orden (por ej. curso)
    materias = db(q).select(orderby=orden)
    
    # obtengo las notas
    q = db.notas.alumnoid == db.alumnos.alumnoid
    q &= db.notas.materiaid == db.materias.materiaid
    q &= db.notas.calificacionid == 5  # filtrar solo finales
    #q &= db.notas.periodoid == ...     # HACER: filtrar otros campos
    notas = db(q).select(db.alumnos.nombre, db.materias.nombre, db.notas.nota, db.notas.alta)
    
    return dict (notas= notas)
    
def final():
     
  
    q = db.examenes.examenid>0
    q &= db.examenes.materiaid== db.materias.materiaid
    q &= db.examenes.personalid1== db.personal.personalid
    final= db(q).select(db.materias.nombre, db.personal.nombre, db.examenes.fecha, db.examenes.hora)
  
    return dict (final= final) 
         
###################################################################################
        
def parciales():
    # obtengo el parámetro pasado por variable en la url
    alumnoid = request.vars['alumnoid']
    # busco el alumno
    alumno = db.alumnos[alumnoid]
    # obtengo la carrera / plan de estudio
    #carreraid = alumno.carreraid ...
    
    # obtengo las notas
    q = db.notas.alumnoid == db.alumnos.alumnoid
    q &= db.notas.materiaid == db.materias.materiaid
    q &= db.notas.calificacionid == 3  # filtrar solo cuatrimestrales
    q &= db.notas.periodoid == db.periodos.periodoid     # HACER: filtrar otros campos
    notas = db(q).select(db.alumnos.nombre, db.materias.nombre, 
    db.notas.nota, db.periodos.descripcion, db.notas.fecha)
    
    return dict (notas= notas)
    
def inscripciones():
    "Listado de inscripciones a curso"
    return {}
    
def archivos():
    "descarga de archivos pedagogicos subidos por docentes"
    return {}
