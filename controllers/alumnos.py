# coding: utf8
# try something like

@auth.requires_login() #requiere que haya un usuario logeado
#@auth.requires_membership(role='alumnos') #requiere que haya un usuario logeado e integre el grupo alumnos

def index(): 
    #q = db.alumnos.user_id== auth.user_id
    #guardo en la consulta el registro del alumno
    #traemos el alumno para notificarlo en la vista
    #alumno= db(q).select().first()
    
    return dict ()

@auth.requires_login() #requiere que haya un usuario logeado
@auth.requires_membership(role='Alumnos') #requiere que haya un usuario logeado e integre el grupo alumnos

def ficha():
    # muestra un perfil personalizado del alumno.
    q = db.alumnos.user_id== auth.user_id   # obtengo el registro del alumno ya registrado como usuario 
    q &= db.inscripcionescomision.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    q &= db.comisiones.materiaid== db.materias.materiaid
    q &= db.inscripcionescarrera.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    q &= db.comisiones.divisionid== db.divisiones.divisionid
    q &= db.divisiones.cicloid== db.ciclos.cicloid
    fila = db(q).select( db.alumnos.nombre, db.alumnos.fechanacimiento, 
                         db.alumnos.estadocivil, db.alumnos.foto, db.alumnos.email1, 
                         db.alumnos.ingreso, db.alumnos.localidad, db.alumnos.nacionalidad,
                         db.carreras.nombre,).first()
                         
    datos= db(q).select( db.comisiones.nombre, db.inscripcionescomision.alta,
                         db.ciclos.anio, db.carreras.nombre)
                                  
    return dict (alumno=fila, dato=datos)
    
#@auth.requires_login()


@auth.requires_login() #requiere que haya un usuario logeado
def ingreso():
    db.alumnos.user_id.default= auth.user_id
    subtitulo= T ('Complete el formulario por favor...')
    form=SQLFORM(db.alumnos)
    if form.accepts(request.vars,session):
        grupo_id = db(db.auth_group.role=='Alumnos').select(db.auth_group.id)
        for x in grupo_id:
            grupo=x.id
        db.auth_membership.insert(user_id=auth.user_id, group_id=grupo)
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


@auth.requires_login() #requiere que haya un usuario logeado
@auth.requires_membership(role='Alumnos') #requiere que haya un usuario logeado e integre el grupo alumnos
def horarios():
   #lista los horarios dependiendo de la carrera
    q = db.alumnos.user_id== auth.user_id    #guardo en la consulta el registro del alumno
    alumno= db(q).select().first()     #traemos el alumno para notificarlo en la vista
    q &= db.inscripcionescarrera.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    q &= db.horarios.horaid== db.horas.horaid
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
        
    return dict (horario=horario, horas=horas, alumno=alumno)
    
   
@auth.requires_login() #requiere que haya un usuario logeado
@auth.requires_membership(role='Alumnos')    #requiere que haya un usuario logeado e integre el grupo alumnos
    
def inasistencias():   #lista de inasistencias del alumno
    #buscar el alumno y compararlo con el logueado
    q = db.alumnos.user_id== auth.user_id
    #traemos el alumno para notificarlo en la vista
    alumno= db(q).select().first()
    #utilizamos los datos de faltas para filtrar las inasistencias del alumno
    q &= db.faltas.alumnoid== db.alumnos.alumnoid
    #de inscrip_comision buscamos la materia = al alumno
    q &= db.inscripcionescarrera.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    q &= db.inscripcionescomision.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    q &= db.faltas.comisionid== db.comisiones.comisionid
    q &= db.comisiones.personalid== db.personal.personalid      
      
    q &= db.faltas.inasistenciaid== db.inasistencias.inasistenciaid
    #cantidad= db(q).count()
    falta= db(q).select(db.comisiones.nombre, db.faltas.cantidad, db.inasistencias.descripcion, db.faltas.fecha)

    total= db(q).select(db.faltas.cantidad.sum().with_alias("suma")).first()
    
    
    return dict (falta=falta, alumno=alumno, total=total)
    
@auth.requires_login() #requiere que haya un usuario logeado
@auth.requires_membership(role='Alumnos') #requiere que haya un usuario logeado e integre el grupo alumnos
    
def examenes():
     #listado de examenes finales ya rendidos
    q = db.alumnos.user_id== auth.user_id
    #traemos el alumno para notificarlo en la vista
    alumno= db(q).select().first()
    #guardo en la consulta el registro del alumno
    q &= db.inscripcionescarrera.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    q &= db.notas.alumnoid == db.alumnos.alumnoid
    q &= db.notas.materiaid == db.materias.materiaid
    q &= db.materias.cursoid == db.cursos.cursoid
    q &= db.notas.calificacionid == 5  # filtrar solo finales
    q &= db.notas.periodoid == db.periodos.periodoid
    notas = db(q).select(db.alumnos.nombre, db.materias.nombre, db.notas.nota, db.notas.fecha, db.periodos.descripcion, db.cursos.nombre)
    
    return dict (notas= notas, alumno=alumno)
  
@auth.requires_login() #requiere que haya un usuario logeado
@auth.requires_membership(role='Alumnos') #requiere que haya un usuario logeado e integre el grupo alumnos
  
def final(): #formulario de inscrip a examenes finales 
    
    q = db.alumnos.user_id== auth.user_id #busca y trae todos los datos del alumno logueado
    alumno= db(q).select().first() 
    # guarda en una variable los datos para poder ser utilizados y tmb la envio a la vista
    
     
     #cuando hago click en el boton guardar
    if request.vars.guardar=="Guardar":
            #en k tenemos el nombre del checkbox
        fecha = request.now.date()
        ok = 0
        for _name,_value in request.vars.items():
            if _name.startswith ("examen_"):
                examen_id = int(_name[_name.index('_')+1:])
                # si el valor es on  en el checkbox insertamos los datos en inscripcion a examenes. 
                if _value == "on":                    
                    db.inscripcionesexamen.insert(alumnoid= alumno.alumnoid, 
                        examenid= examen_id,
                        condicion="Regular",
                        alta=fecha,
                        confirmar=True,
                        valido=True)
                    ok += 1 #creo contador de examenes insertados/seleccionados por el alumno
                    
        if ok:
              response.flash= "Usted se a inscripto a %d exámenes!" % ok
        else:
              response.flash = "Por favor seleccione una opción!"
    
    else:
        response.flash='Por favor, complete el formulario'     
                
    
    # guarda en una variable los datos para poder ser utilizados y tmb la envio a la vista
    inscripciones = db(db.inscripcionesexamen.alumnoid==alumno.alumnoid).select(db.inscripcionesexamen.examenid)
    inscripciones = [inscripcion.examenid for inscripcion in inscripciones]
    #listo si ya se inscribio al examen
    n= db.notas.alumnoid== alumno.alumnoid
    n&= db.notas.calificacionid==5
    n&= db.notas.nota>4
    notas= db(n).select(db.notas.materiaid)
    notas = [nota.materiaid for nota in notas]
    #listo si ya aprobo el examen 
    
    aprobadas= []
    desaprobadas= []
    n= db.notas.alumnoid== alumno.alumnoid
    n&= db.notas.calificacionid==5
    nota= db(n).select(db.notas.nota, db.notas.materiaid)
    for notas in nota:
            if notas.nota>4:
                aprobadas.append(notas.materiaid)
            else:
                desaprobadas.append(notas.materiaid)
    correlatividades = {}
    c= db().select(db.correlativas.materiacorrelativa, db.correlativas.materiaid)
    for x in c:
        correlatividades.setdefault(x.materiaid, []).append(x.materiacorrelativa)    
    
    
    q = db.examenes.materiaid== db.materias.materiaid
    q &= db.examenes.personalid1== db.personal.personalid
    q &= db.materias.materiaid== db.asignaturas.materiaid
    q &= db.asignaturas.carreraid== db.carreras.carreraid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    q &= db.inscripcionescarrera.alumnoid== alumno.alumnoid
    
    final= db(q).select(db.examenes.examenid, db.examenes.materiaid, db.materias.nombre, db.personal.nombre, db.examenes.fecha, db.examenes.hora)      
                
    msj_aprobada = {}                
    mensajes = {}
    msj_inscripto = {}
    msj_disponible = {}
    for f in final:
        msg_aprobada=[]
        msg = []
        msg_inscripto= []
        msg_disponible= []
        if f.examenes.examenid in inscripciones:
            msg_inscripto.append("Ya se encuentra inscripto")
        msj_inscripto[f.examenes.materiaid] = ', '.join(msg_inscripto)
        if f.examenes.materiaid in aprobadas:
            msg_aprobada.append("Materia Aprobada")
        msj_aprobada[f.examenes.materiaid] = ', '.join(msg_aprobada)
        if f.examenes.materiaid in correlatividades:
            correlativas = correlatividades[f.examenes.materiaid]
            for correlativa in correlativas:
                if correlativa not in aprobadas:
                    msg.append("Materia %s No Aprobada" % correlativa)
                
            mensajes[f.examenes.materiaid] = ', '.join(msg)
        else:
             msg_disponible.append("Disponible")
        msj_disponible[f.examenes.materiaid] = ', '.join(msg_disponible)
         
    return dict (final= final, alumno=alumno, inscripciones=inscripciones, notas=notas, aprobadas= aprobadas, desaprobadas= desaprobadas, correlatividades=correlatividades, mensajes=mensajes, msj_aprobada= msj_aprobada, msj_inscripto=msj_inscripto , msj_disponible=msj_disponible) 
         
###################################################################################
  
@auth.requires_login() #requiere que haya un usuario logeado
@auth.requires_membership(role='Alumnos') #requiere que haya un usuario logeado e integre el grupo alumnos
      
def parciales():
    #lista examenes cuatrimestrales ya rendidos
    
    q = db.alumnos.user_id== auth.user_id
    #guardo en la consulta el registro del alumno
    #traemos el alumno para notificarlo en la vista
    alumno= db(q).select().first()
    q &= db.inscripcionescarrera.alumnoid== alumno.alumnoid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    q &= db.notas.alumnoid == db.alumnos.alumnoid
    q &= db.notas.materiaid == db.materias.materiaid
    q &= db.materias.cursoid == db.cursos.cursoid
    q &= db.notas.calificacionid == 3  # filtrar solo cuatrimestrales
    q &= db.notas.periodoid == db.periodos.periodoid     # HACER: filtrar otros campos
    notas = db(q).select(db.alumnos.nombre, db.materias.nombre, 
    db.notas.nota, db.periodos.descripcion, db.notas.fecha, db.cursos.nombre)
    
    return dict (notas= notas, alumno=alumno)
    
def inscripciones():
    q = db.alumnos.user_id== auth.user_id #busca y trae todos los datos del alumno logueado
    alumno= db(q).select().first() 
    # guarda en una variable los datos para poder ser utilizados y tmb la envio a la vista
    
     
     #cuando hago click en el boton guardar
    if request.vars.guardar=="Guardar":
            #en k tenemos el nombre del checkbox
        fecha = request.now.date()
        ok = 0
        for _name,_value in request.vars.items():
            if _name.startswith ("comision_"):
                comision_id = int(_name[_name.index('_')+1:])
                # si el valor es on  en el checkbox insertamos los datos en inscripcion a examenes. 
                if _value == "on":                    
                    db.inscripcioncomision.insert(alumnoid= alumno.alumnoid, 
                        comisionid= comision_id,
                        alta=fecha,
                        condicion="Regular")
                    ok += 1 #creo contador de examenes insertados/seleccionados por el alumno
                    
        if ok:
              response.flash= "Usted se a inscripto a %d comisiones!" % ok
        else:
              response.flash = "Por favor seleccione una opción!"
    
    else:
        response.flash='Por favor, complete el formulario'     
                
    
    # guarda en una variable los datos para poder ser utilizados y tmb la envio a la vista
    inscripciones = db(db.inscripcionescomision.alumnoid==alumno.alumnoid).select(db.inscripcionescomision.comisionid)
    inscripciones = [inscripcion.comisionid for inscripcion in inscripciones]
    #listo si ya se inscribio al examen
    
    aprobada= []
    desaprobada= []
    n= db.notas.alumnoid== alumno.alumnoid
    n&= db.notas.calificacionid==5
    nota= db(n).select(db.notas.nota, db.notas.materiaid)
    for notas in nota:
            if notas.nota>4:
                aprobada.append(notas.materiaid)
            else:
                desaprobada.append(notas.materiaid)
    
   
    q = db.comisiones.materiaid== db.materias.materiaid
    q &= db.comisiones.personalid== db.personal.personalid
    q &= db.materias.materiaid== db.asignaturas.materiaid
    q &= db.asignaturas.carreraid== db.carreras.carreraid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    q &= db.inscripcionescarrera.alumnoid== alumno.alumnoid
    
    comision= db(q).select(db.comisiones.comisionid, db.comisiones.materiaid, db.materias.nombre, db.personal.nombre)       
                
         
    return dict (comision= comision, alumno=alumno, inscripciones=inscripciones, aprobada= aprobada, desaprobada= desaprobada) 
    
def archivos():
    "descarga de archivos pedagogicos subidos por docentes"
    return {}
