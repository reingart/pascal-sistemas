# coding: utf8
# try something like

@auth.requires_login() #requiere que haya un usuario logeado
@auth.requires_membership(role='alumnos') #requiere que haya un usuario logeado e integre el grupo alumnos

def index(): 
    "menu alumnos"
    return dict ()

@auth.requires_login() #requiere que haya un usuario logeado
@auth.requires_membership(role='alumnos') #requiere que haya un usuario logeado e integre el grupo alumnos

def ficha():
    # muestra un perfil personalizado del alumno    
    # obtengo el registro del alumno ya registrado como usuario 
    
    q = db.alumnos.user_id== auth.user_id
    fila = db(q).select( db.alumnos.nombre, db.alumnos.fechanacimiento, db.alumnos.estadocivil,
                         db.alumnos.foto, db.alumnos.email1, db.alumnos.ingreso,
                         db.alumnos.localidad, db.alumnos.nacionalidad,).first()
                         
    q &= db.inscripcionescomision.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    q &= db.comisiones.materiaid== db.materias.materiaid
    q &= db.materias.materiaid== db.asignaturas.materiaid
    q &= db.asignaturas.carreraid== db.carreras.carreraid
    q &= db.comisiones.periodoid== db.periodos.periodoid
    q &= db.periodos.cicloid== db.ciclos.cicloid
    datos= db(q).select( db.comisiones.nombre, db.inscripcionescomision.alta, db.ciclos.anio, db.carreras.nombre)
                      
                         
    
                         
    return dict (alumno=fila, dato=datos)
    
#@auth.requires_login()


@auth.requires_login() #requiere que haya un usuario logeado
def ingreso():
    db.alumnos.user_id.default= auth.user_id
    subtitulo= T ('Complete el formulario por favor...')
    form=SQLFORM(db.alumnos)
    #db.auth_membership.insert(auth_membership.user_id== db.auth_id, auth_membership.group_id== auth_group.id)
    if form.accepts(request.vars,session):
        grupo_id = db(db.auth_group.role=='alumnos').first().id
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
    
    q = db.horarios.horaid==db.horas.horaid
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
    filas = db(db.horas.id>0).select()
    horas=dict ([(hora.hora, hora) for hora in filas])
        
    return dict (horario=horario, horas=horas)
    
   
@auth.requires_login() #requiere que haya un usuario logeado
@auth.requires_membership(role='alumnos')    #requiere que haya un usuario logeado e integre el grupo alumnos
    
def inasistencias():
    #lista de inasistencias del alumno
    #buscar el alumno y compararlo con el logueado
    
    q = db.alumnos.user_id== auth.user_id
    #utilizamos los datos de faltas para filtrar las inasistencias del alumno
    q &= db.faltas.alumnoid== db.alumnos.alumnoid
    #de inscrip_comision buscamos la materia = al alumno
    q &= db.inscripcionescomision.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    q &= db.faltas.comisionid== db.comisiones.comisionid
    q &= db.comisiones.personalid== db.personal.personalid
    q &= db.faltas.inasistenciaid== db.inasistencias.inasistenciaid
    falta= db(q).select(db.alumnos.nombre, db.comisiones.nombre, db.faltas.cantidad, db.inasistencias.descripcion, db.faltas.fecha)
    
    return dict (falta=falta)
    
@auth.requires_login() #requiere que haya un usuario logeado
@auth.requires_membership(role='alumnos') #requiere que haya un usuario logeado e integre el grupo alumnos
    
def examenes():
     #listado de examenes finales ya rendidos
    q = db.alumnos.user_id== auth.user_id
    #guardo en la consulta el registro del alumno
    q &= db.notas.alumnoid == db.alumnos.alumnoid
    q &= db.notas.materiaid == db.materias.materiaid
    q &= db.materias.cursoid == db.cursos.cursoid
    q &= db.notas.calificacionid == 5  # filtrar solo finales
    q &= db.notas.periodoid == db.periodos.periodoid
    notas = db(q).select(db.alumnos.nombre, db.materias.nombre, db.notas.nota, db.notas.fecha, db.periodos.descripcion, db.cursos.nombre)
    
    return dict (notas= notas)
  
@auth.requires_login() #requiere que haya un usuario logeado
@auth.requires_membership(role='alumnos') #requiere que haya un usuario logeado e integre el grupo alumnos
  
def final():
    
    q = db.alumnos.user_id== auth.user_id
    alumno= db(q).select().first()
    
    #formulario de inscrip a examenes finales 
    q = db.examenes.examenid>0
    q &= db.examenes.materiaid== db.materias.materiaid
    q &= db.examenes.personalid1== db.personal.personalid
    final= db(q).select(db.examenes.examenid, db.materias.nombre, db.personal.nombre, db.examenes.fecha, db.examenes.hora)
  
    if request.vars.guardar=="Guardar":
            #en k tenemos el nombre del checkbox
        fecha = request.vars.fecha
        for _name,_value in request.vars.items():
            if _name.startswith ("examen_"):
                examen_id = int(_name[_name.index('_')+1:])
                # si el valor es on  en el checkbox insertamos los datos del alumno en la tabla faltas. 
                if _value == "on":                    
                    db.inscripcionesexamen.insert(alumnoid= alumno.alumnoid, 
                        examenid= examen_id,
                        condicion="R",
                        alta=fecha,
                        confirmar=True,
                        valido=True)
                       
      
    return dict (final= final) 
         
     
         
###################################################################################
  
@auth.requires_login() #requiere que haya un usuario logeado
@auth.requires_membership(role='alumnos') #requiere que haya un usuario logeado e integre el grupo alumnos
      
def parciales():
    #lista examenes cuatrimestrales ya rendidos
    
    q = db.alumnos.user_id== auth.user_id
    #guardo en la consulta el registro del alumno
    q &= db.notas.alumnoid == db.alumnos.alumnoid
    q &= db.notas.materiaid == db.materias.materiaid
    q &= db.materias.cursoid == db.cursos.cursoid
    q &= db.notas.calificacionid == 3  # filtrar solo cuatrimestrales
    q &= db.notas.periodoid == db.periodos.periodoid     # HACER: filtrar otros campos
    notas = db(q).select(db.alumnos.nombre, db.materias.nombre, 
    db.notas.nota, db.periodos.descripcion, db.notas.fecha, db.cursos.nombre)
    
    return dict (notas= notas)
    
def inscripciones():
    "Listado de inscripciones a curso"
    return {}
    
def archivos():
    "descarga de archivos pedagogicos subidos por docentes"
    return {}
