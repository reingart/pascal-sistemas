# coding: utf8
# try something like
response.title = "Campus Web Pro"

#requiere que haya un usuario logueado
@auth.requires_login()
#requiere que haya un usuario logeado e integre el grupo alumnos
@auth.requires_membership(role='Alumnos')
def libreta(): 
    q = db.alumnos.user_id== auth.user_id    #guardo en la consulta el registro del alumno
    alumno= db(q).select().first() #traemos el alumno para notificarlo en la vista
    q &= db.materias.materiaid== db.asignaturas.materiaid
    q &= db.asignaturas.carreraid== db.carreras.carreraid
    q &= db.inscripcionescarrera.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    q &= db.comisiones.materiaid== db.materias.materiaid
    materias=db(q).select(db.materias.id, db.materias.nombre)
    mat=db(q).select(db.materias.id)

    q =db.alumnos.user_id== auth.user_id
    q &= db.alumnos.alumnoid==db.notas.alumnoid
    notas=db(q).select(db.notas.materiaid,
                       db.notas.fecha,
                       db.notas.libro,
                       db.notas.folio,
                       db.notas.nota,
                       db.notas.periodoid)
    map_notas = dict([(nota.materiaid, nota) for nota in notas])

    if request.vars.Aceptar:
        n = 0
        for materia in materias:
            try:
                nota = int(request.vars.get("nota_%s" % materia.id))
                fecha = request.vars.get("fecha_%s" % materia.id)
                #validar valores de foliio, libro y fecha el formato
                libro = request.vars.get("libro_%s" % materia.id)
                folio = request.vars.get("folio_%s" % materia.id)
                # validar datos
                if 1 <= nota <= 10:
                    if materia.id in map_notas:
                        q = db.notas.alumnoid==alumno.alumnoid
                        q &= db.notas.materiaid==materia.materiaid
                        q &= db.notas.calificacionid==5
                        db(q).update(nota=nota,
                                     fecha=fecha,
                                     libro=libro,
                                     folio=folio)
                    else:
                        db.notas.insert(alumnoid=alumno.alumnoid, 
                                        materiaid=materia.materiaid,
                                        calificacionid=5,
                                        nota=nota,
                                        fecha=fecha,
                                        libro=libro,
                                        folio=folio)
            except ValueError:
                 msg = "Error de datos"
        redirect (URL (f="libreta"))
    periodos= db(db.periodos).select(db.periodos.periodoid,
                                     db.periodos.descripcion)
    cursadas=[]
    n = db.alumnos.user_id== auth.user_id    #guardo en la consulta el registr del alumno
    alumno= db(n).select().first() #traemos el alumno para notificarlo en la vista
    n= db.inscripcionescomision.alumnoid== alumno.alumnoid
    n&= db.inscripcionescomision.baja == None
    n&= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    inscripciones= db(n).select(db.comisiones.materiaid,
                                db.inscripcionescomision.condicion,
                                db.inscripcionescomision.alta, )
    for inscripcion in inscripciones:
        cursadas.append(inscripcion.comisiones.materiaid)
    return{"materias":materias, "map_notas":map_notas}

@auth.requires_login()
def index():
    response.subtitle= "Menu de alumnos"
    fecha= request.now.date() #guardo la fecha actual
    fecha_actual= fecha.strftime("%d/%m/%Y") #cambio el formato de fecha a latino-american
    usuario=auth.user_id
    alumnos= db(db.alumnos).select(db.alumnos.user_id,
                                   db.alumnos.alumnoid)

    c = db.inscripcionescomision.alumnoid== db.alumnos.alumnoid
    c &= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    inscripcion= db(c).select(db.alumnos.alumnoid,
                              db.comisiones.comisionid)

    visible= []
    dato= []
    #verifico si el alumno se encuentra inscripto a comision, si es asi lo guardo en "visible"
    if usuario in alumnos:
        dato.append(alumnos.alumnoid)
        for x in inscripcion:
            if x.alumnoid== dato:
                visible.append(x.alumnoid)
    user= []
    #verifico si el usuario logueado se encuentra registrado como alumno alumnos. si es asi lo guardo en "user"
    for n in alumnos:
        if n.user_id==usuario:
            user.append(n.user_id)
    q = db.alumnos.user_id== auth.user_id    #guardo en la consulta el registro del alumno
    alumno= db(q).select().first() #traemos el alumno para notificarlo en la vista
    q &= db.materias.materiaid== db.asignaturas.materiaid
    q &= db.asignaturas.carreraid== db.carreras.carreraid
    q &= db.inscripcionescarrera.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    q &= db.comisiones.materiaid== db.materias.materiaid
    materias=db(q).select(db.materias.id, db.materias.nombre)
    mat=db(q).select(db.materias.id)
    o = db.alumnos.user_id == auth.user_id    #guardo en la consulta el registro del alumno
    #o &= db.faltas.alumnoid == db.alumnos.alumnoid
    #o &= db.faltas.comisionid == db.comisiones.comisionid
    o &= db.materias.materiaid== db.comisiones.materiaid
    o &= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    o &= db.inscripcionescomision.alumnoid== db.alumnos.alumnoid
    o &= db.inscripcionescomision.condicion== db.condiciones.condicionid
    com=db(o).select(db.materias.id,
                     db.materias.nombre,
                     db.comisiones.nombre,
                     db.comisiones.materiaid,
                     db.condiciones.detalle,
                     db.alumnos.nombre,
                    )
    c = db.alumnos.user_id == auth.user_id    #guardo en la consulta el registro del alumno
    c &= db.faltas.alumnoid == db.alumnos.alumnoid
    c &= db.faltas.comisionid == db.comisiones.comisionid
    c &= db.materias.materiaid== db.comisiones.materiaid
    c &= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    c &= db.inscripcionescomision.alumnoid== db.alumnos.alumnoid
    c &= db.inscripcionescomision.condicion== db.condiciones.condicionid
    faltas=db(c).select(db.materias.id,
                        db.materias.nombre,
                        db.comisiones.nombre,
                        db.comisiones.materiaid,
                        db.condiciones.detalle,
                        db.alumnos.nombre,
                        db.faltas.cantidad.sum().with_alias("suma"),
                        groupby=(db.alumnos.nombre,
                                 db.materias.id,
                                 db.materias.nombre,
                                 db.comisiones.nombre,
                                 db.comisiones.materiaid,
                                 db.condiciones.detalle,))
    faltas_map = dict([(f.comisiones.materiaid, f.suma) for f in faltas])
    return dict (faltas_map=faltas_map,
                 fecha_actual=fecha_actual,
                 visible= visible,
                 user=user,
                 usuario=usuario,
                 materias=materias,
                 com=com)

#requiere que haya un usuario logueado
@auth.requires_login()

#requiere que haya un usuario logeado e integre el grupo alumnos
@auth.requires_membership(role='Alumnos')

def ficha():
    response.subtitle= "Ficha de Alumno"
    # muestra un perfil personalizado del alumno.
    q = db.alumnos.user_id== auth.user_id  
     # obtengo el registro del alumno ya registrado como usuario 
    alumno= db(q).select( db.alumnos.nombre,
                         db.alumnos.fechanacimiento,
                         db.alumnos.estadocivil,
                         db.alumnos.foto,
                         db.alumnos.email1,
                         db.alumnos.ingreso,
                         db.alumnos.localidad,
                         db.alumnos.nacionalidad,
                         db.alumnos.alumnoid).first()
    q &= db.inscripcionescomision.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    q &= db.comisiones.materiaid== db.materias.materiaid
    q &= db.comisiones.divisionid== db.divisiones.divisionid
    q &= db.divisiones.cicloid== db.ciclos.cicloid
    q &= db.materias.materiaid== db.asignaturas.materiaid
    q &= db.asignaturas.carreraid== db.carreras.carreraid
    datos= db(q).select(db.comisiones.nombre,
                        db.inscripcionescomision.alta,
                        db.ciclos.anio,
                        db.carreras.nombre)
    inscripcion= db(db.inscripcionescomision).select(db.inscripcionescomision.alumnoid,
                                                     db.inscripcionescomision.comisionid)
    #envio todos los alumnos y comisiones para luego comparar en ficha.
    alumnos= db(db.alumnos).select(db.alumnos.user_id,
                                   db.alumnos.alumnoid)
    return dict (alumno=alumno, dato=datos,
                 inscripcion=inscripcion)

#requiere que haya un usuario logueado..
#@auth.requires_login()
def ingreso():
    db.alumnos.user_id.default= auth.user_id
    subtitulo= T ('Complete el formulario por favor...')
    form=SQLFORM(db.alumnos)
    if form.accepts(request.vars,session):
        grupo_id = db(db.auth_group.role=='Alumnos').select(db.auth_group.id)
        for x in grupo_id:
            grupo=x.id
        db.auth_membership.insert(user_id=auth.user_id,
                                  group_id=grupo)
        #agrego al alumno y su id de registro en el grupo alumnos
        redirect(URL(f=index))
        response.flash='Usted fue agregado como alumno...'
    elif form.errors:
        response.flash='Hay errores en el formulario'
    else:
        response.flash='Por favor, complete el formulario'
    return dict (form=form, sub=subtitulo)

 #requiere que haya un usuario logeado
@auth.requires_login()
def inscripcioncarrera():
    response.subtitle= "Inscripcion Carrera"
    q = db.alumnos.user_id== auth.user_id
    alumno= db(q).select().first()
    if request.vars.grabar=="Guardar":

        # en _name tenemos el nombre del checkbox
        fecha = request.now.date()
        for _name,_value in request.vars.items():
            if _name.startswith ("carrera_"):
        # obtenemos los valores de los campos en el formulario para este alumno
                carrera_id = request.vars["carrera_%s" % alumno.alumnoid]
                validar = request.vars["validar_%s" % alumno.alumnoid]
                #validar= me confirma si la inscripcion es on u off
                # si el valor es on  en el checkbox insertamos los datos en la tabla inscip.carreras.
                ok= 0
                if validar== "on":
                    db.inscripcionescarrera.insert(alumnoid= alumno.alumnoid,
                                                   carreraid=carrera_id,
                                                   alta=fecha)
                    ok += 1 #creo contador de examenes insertados/seleccionados por el alumno
        if ok:
              response.flash= "Usted se a inscripto a %d carrera!" % ok
        else:
              response.flash = "Por favor seleccione una opción!"
    carreras= db(db.carreras).select(db.carreras.carreraid,
                                     db.carreras.nombre)
    return dict (carreras=carreras,
                 alumno=alumno)
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

#requiere que haya un usuario logueado
@auth.requires_login()
#requiere que haya un usuario logueado e integre el grupo alumnos
#@auth.requires_membership(role='Alumnos') 
def horarios():
    response.subtitle= "Inscripcion Carrera"
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
    filas= db(q).select(db.horas.hora, db.personal.nombre,
                        db.materias.nombre,
                        db.divisiones.divisionid,
                        db.horarios.dia)
    horario = {'lunes':{},'martes':{},'miercoles':{},'jueves':{},'viernes':{}}
    for fila in filas:
        horario[fila.horarios.dia].setdefault(fila.horas.hora, {})[fila.divisiones.divisionid]= fila
    filas = db(db.horas.id>0).select()
    horas=dict ([(hora.hora, hora) for hora in filas])
    return dict (horario=horario,
                 horas=horas,
                 alumno=alumno)
#requiere que haya un usuario logueado
@auth.requires_login()
#requiere que haya un usuario logueado e integre el grupo alumnos
@auth.requires_membership(role='Alumnos')
def horarios_comision():
   #lista los horarios dependiendo de la carrera
    response.subtitle= "Horarios de comision"
    q = db.alumnos.user_id== auth.user_id
        #guardo en la consulta el registro del alumno
    alumno= db(q).select().first()     #traemos el alumno para notificarlo en la vista
    q &= db.inscripcionescomision.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    q &= db.horarios.horaid== db.horas.horaid
    q &= db.horarios.comisionid== db.comisiones.comisionid
    q &= db.comisiones.personalid== db.personal.personalid
    q &= db.comisiones.materiaid== db.materias.materiaid
    q &= db.comisiones.divisionid== db.divisiones.divisionid
    horarios= db(q).select(db.horas.hora,
                           db.horas.desde,
                           db.horas.hasta,
                           db.personal.nombre,
                           db.materias.nombre,
                           db.divisiones.descripcion,
                           db.horarios.dia)
    return dict (horarios= horarios, alumno=alumno)
#requiere que haya un usuario logueado
@auth.requires_login()
 #requiere que haya un usuario logueado e integre el grupo alumnos
#@auth.requires_membership(role='Alumnos')
def inasistencias():
    response.subtitle= "Cantidad de inasistencias"
    #lista de inasistencias del alumno
    fecha= request.now.date()
    #guardo la fecha actual
    fecha_actual= fecha.strftime("%d/%m/%Y")
    #cambio el formato de fecha a latino-americano
    #buscar el alumno y compararlo con el logueado
    q = db.alumnos.user_id== auth.user_id
    #traemos el alumno para notificarlo en la vista
    alumno= db(q).select().first()
    #utilizamos los datos de faltas para filtrar las inasistencias del alumno
    q &= db.faltas.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescomision.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    q &= db.faltas.comisionid== db.comisiones.comisionid
    q &= db.comisiones.personalid== db.personal.personalid
    q &= db.faltas.inasistenciaid== db.inasistencias.inasistenciaid
    falta= db(q).select(db.comisiones.nombre,
                        db.faltas.cantidad,
                        db.inasistencias.descripcion,
                        db.faltas.fecha)

    total= db(q).select(db.faltas.cantidad.sum().with_alias("suma")).first()
    #creo un grupo en donde guardo la suma de las inasistencias de los alumnos
    return dict (falta=falta,
                 alumno=alumno,
                 total=total,
                 fecha_actual=fecha_actual)

#requiere que haya un usuario logueado
@auth.requires_login()
#requiere que haya un usuario logeado e integre el grupo alumnos
#@auth.requires_membership(role='Alumnos')
def examenes():
     #litado de examenes finales ya rendidos
    q = db.alumnos.user_id== auth.user_id
    #traemos el alumno para notificarlo en la vista
    alumno= db(q).select().first()
    #guardo en la consulta el registro del alumno
    #q &= db.inscripcionescarrera.alumnoid== db.alumnos.alumnoid
    #q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    q &= db.notas.alumnoid == db.alumnos.alumnoid
    q &= db.notas.materiaid == db.materias.materiaid
    q &= db.materias.cursoid == db.cursos.cursoid
    q &= db.notas.calificacionid == 5
    notas = db(q).select(db.alumnos.nombre,
                         db.materias.nombre,
                         db.notas.nota,
                         db.notas.fecha,
                         db.cursos.nombre)
    return dict (notas= notas,
                 alumno=alumno)

#requiere que haya un usuario logueado
@auth.requires_login() 
#requiere que haya un usuario logueado e integre el grupo alumnos
#@auth.requires_membership(role='Alumnos')
def final():
    #formulario de inscrip a examenes finales
    q = db.alumnos.user_id== auth.user_id
    #busca y trae todos los datos del alumno logueado
    alumno= db(q).select().first()
    # guarda en una variable los datos para poder ser utilizados y tmb la envio a la vista
    #cuando hago click en el boton guardar
    if request.vars.guardar=="Guardar":
            #en k tenemos el nombre del checkbox
        fecha = request.now.date()
        ok = 0
        condicion_id= 1
        for _name,_value in request.vars.items():
            if _name.startswith ("final_"):
                examen_id = int(_name[_name.index('_')+1:])
                # si el valor es on  en el checkbox insertamos los datos en inscripcion a examenes. 
                if _value == "on":
                    db.inscripcionesexamen.insert(alumnoid= alumno.alumnoid,
                        examenid= examen_id,
                        condicion=condicion_id,
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
    cursadas=[]
    n= db.inscripcionescomision.alumnoid== alumno.alumnoid
    n&= db.inscripcionescomision.baja == None
    n&= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    inscripciones= db(n).select(db.comisiones.materiaid,
                                db.inscripcionescomision.condicion,
                                db.inscripcionescomision.alta, )
    for inscripcion in inscripciones:
        cursadas.append(inscripcion.comisiones.materiaid)
    
    inscripto=[]
    o= db.inscripcionesexamen.alumnoid== alumno.alumnoid
    o&= db.inscripcionesexamen.baja == None
    o&= db.inscripcionesexamen.examenid== db.examenes.examenid
    fin= db(o).select(db.examenes.materiaid,
                      db.inscripcionesexamen.condicion,
                      db.inscripcionesexamen.alta, )
    for inscripcion in fin:
        inscripto.append(inscripcion.examenes.materiaid)
        
        
        
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

        if f.examenes.materiaid in correlatividades:
            correlativas = correlatividades[f.examenes.materiaid]
            for correlativa in correlativas:
                if correlativa not in aprobadas:
                    msg.append("Materia %s No Aprobada" % correlativa)
            mensajes[f.examenes.materiaid] = ', '.join(msg)

        if f.examenes.materiaid in aprobadas:
            msg_aprobada.append("Materia Aprobada")
        msj_aprobada[f.examenes.materiaid] = ', '.join(msg_aprobada)

    return dict ( inscripto=inscripto, cursadas=cursadas, final= final, alumno=alumno, inscripciones=inscripciones, aprobadas= aprobadas, desaprobadas= desaprobadas, correlatividades=correlatividades, mensajes=mensajes, msj_aprobada= msj_aprobada, msj_inscripto=msj_inscripto )
def constancia_final():
    fecha= request.now.date()
    #guardo la fecha actual
    fecha_actual= fecha.strftime("%d/%m/%Y")
    #cambio el formato de fecha a latino-americano
    #traigo las inscripciones a examenes finales del alumno para formatearla en una constancia para su posterior impresio
    q = db.alumnos.user_id== auth.user_id
     #guardo en la consulta el registro del alumno
    alumno= db(q).select().first()
    #traemos el alumno para notificarlo en la vista
    q &= db.inscripcionesexamen.alumnoid== alumno.alumnoid
    q &= db.inscripcionesexamen.examenid== db.examenes.examenid
    q &= db.inscripcionescarrera.alumnoid== alumno.alumnoid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    carrera= db(q).select(db.carreras.nombre).first()
    q &= db.examenes.materiaid== db.materias.materiaid
    q &= db.examenes.periodoid== db.periodos.periodoid
    q &= db.examenes.personalid1== db.personal.personalid
    inscripcion= db(q).select(db.materias.codigo, db.materias.nombre, db.periodos.descripcion, db.personal.nombre, db.examenes.fecha)
    return dict(alumno=alumno, inscripcion=inscripcion, carrera=carrera, fecha_actual=fecha_actual)
@auth.requires_login() #requiere que haya un usuario logueado
#@auth.requires_membership(role='Alumnos') #requiere que haya un usuario logueado e integre el grupo alumnos
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
    return {}
#requiere que haya un usuario logeado
#@auth.requires_login()
#requiere que haya un usuario logeado e integre el grupo alumnos
#@auth.requires_membership(role='Alumnos')
def inscripciones():
    response.subtitle= "Inscripcion a Comisiónes"
    #formulario de inscrip. a comisiones
    q = db.alumnos.user_id== auth.user_id
    #busca y trae todos los datos del alumno logueado
    alumno= db(q).select().first()
    # guarda en una variable los datos para poder ser utilizados y tmb la envio a la vista
     #cuando hago click en el boton guardar
    if request.vars.guardar=="Guardar":
            #en k tenemos el nombre del checkbox
        fecha = request.now.date()
        ok = 0
        condicion_id= 1
        for _name,_value in request.vars.items():
            if _name.startswith ("comisionl_"):
                    comision_id = int(_name[_name.index('_')+1:])
                    # si el valor es on  en el checkbox insertamos los datos en inscripcion a cursada.
                    if _value== "on":
                        db.inscripcionescomision.insert(alumnoid= alumno.alumnoid,
                                    comisionid= comision_id,
                                    alta=fecha,
                                    condicion=2)
                        ok += 1 #creo contador de comisiones insertados/seleccionados por el alumno
            #en caso de falla agregar las condiciones "libre  y regular" en db.condiciones
            if _name.startswith ("comision_"):
                comision_id = int(_name[_name.index('_')+1:])
                # si el valor es on  en el checkbox insertamos los datos en inscripcion a examenes.
                if _value== "on":
                    db.inscripcionescomision.insert(alumnoid= alumno.alumnoid,
                                comisionid= comision_id,
                                alta=fecha,
                                condicion=condicion_id)
                    ok += 1 #creo contador de comisiones insertados/seleccionados por el alumno
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
    condiciones=db(db.condiciones).select(db.condiciones.condicionid,
                                          db.condiciones.detalle)
    comision= db(q).select(db.comisiones.comisionid,
                           db.comisiones.materiaid,
                           db.materias.materiaid,
                           db.materias.nombre,
                           db.personal.nombre)
    return dict (comision= comision,
                 alumno=alumno,
                 inscripciones=inscripciones,
                 aprobada= aprobada,
                 desaprobada= desaprobada,
                 condiciones=condiciones)
def constancia_comision():
    fecha= request.now.date()
    #guardo la fecha actual
    fecha_actual= fecha.strftime("%d/%m/%Y")
    #cambio el formato de fecha a latino-americano
    #traigo las inscripciones a examenes finales del alumno para formatearla en una constancia para su posterior impresion
    q = db.alumnos.user_id== auth.user_id
    #guardo en la consulta el registro del alumno
    alumno= db(q).select().first()
    #traemos el alumno para notificarlo en la vista
    q &= db.inscripcionescomision.alumnoid== alumno.alumnoid
    q &= db.inscripcionescomision.comisionid== db.comisiones.comisionid
    q &= db.inscripcionescarrera.alumnoid== alumno.alumnoid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    carrera= db(q).select(db.carreras.nombre).first()
    q &= db.comisiones.materiaid== db.materias.materiaid
    q &= db.comisiones.periodoid== db.periodos.periodoid
    q &= db.comisiones.divisionid== db.divisiones.divisionid
    inscripcion= db(q).select(db.materias.codigo,
                              db.materias.nombre,
                              db.periodos.descripcion,
                              db.divisiones.descripcion)
    return dict(alumno=alumno, inscripcion=inscripcion, carrera=carrera, fecha_actual=fecha_actual)

@auth.requires_login() #requiere que haya un usuario logueado
#@auth.requires_membership(role='Alumnos') #requiere que haya un usuario logueado e integre el grupo alumnos
def archivos():
    "descarga de archivos pedagogicos subidos por docentes"
    return {}

def parciales():
     #litado de examenes finales ya rendidos
    q = db.alumnos.user_id== auth.user_id
    #traemos el alumno para notificarlo en la vista
    alumno= db(q).select().first()
    #guardo en la consulta el registro del alumno
    q &= db.inscripcionescarrera.alumnoid== db.alumnos.alumnoid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    q &= db.notas.alumnoid == db.alumnos.alumnoid
    q &= db.notas.materiaid == db.materias.materiaid
    q &= db.materias.cursoid == db.cursos.cursoid
    q &= db.notas.calificacionid == 4
    # filtrar solo finales
    q &= db.notas.periodoid == db.periodos.periodoid
    notas = db(q).select(db.alumnos.nombre, db.materias.nombre, db.notas.nota, db.notas.fecha, db.periodos.descripcion, db.cursos.nombre)
    return dict (notas= notas, alumno=alumno)




def inscripcion_cursos():
    return {}
def inscripcion_finales():
    #formulario de inscrip a examenes finales
    q = db.alumnos.user_id== auth.user_id
    #busca y trae todos los datos del alumno logueado
    alumno= db(q).select().first()
    # guarda en una variable los datos para poder ser utilizados y tmb la envio a la vista
     #cuando hago click en el boton guardar
    if request.vars.guardar=="Guardar":
            #en k tenemos el nombre del checkbox
        fecha = request.now.date()
        ok = 0
        condicion_id= 1
        for _name,_value in request.vars.items():
            if _name.startswith ("examen_"):
                examen_id = int(_name[_name.index('_')+1:])
                # si el valor es on  en el checkbox insertamos los datos en inscripcion a examenes.
                if _value == "on":
                    db.inscripcionesexamen.insert(alumnoid= alumno.alumnoid,
                        examenid= examen_id,
                        condicionid=condicion_id,
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
    c= db().select(db.correlativas.materiacorrelativa,
                   db.correlativas.materiaid)
    for x in c:
        correlatividades.setdefault(x.materiaid, []).append(x.materiacorrelativa)    
    q = db.examenes.materiaid== db.materias.materiaid
    q &= db.examenes.personalid1== db.personal.personalid
    q &= db.materias.materiaid== db.asignaturas.materiaid
    q &= db.asignaturas.carreraid== db.carreras.carreraid
    q &= db.inscripcionescarrera.carreraid== db.carreras.carreraid
    q &= db.inscripcionescarrera.alumnoid== alumno.alumnoid
    final= db(q).select(db.examenes.examenid,
                        db.examenes.materiaid,
                        db.materias.nombre,
                        db.personal.nombre,
                        db.examenes.fecha,
                        db.examenes.hora)
    msj_aprobada = {}
    mensajes = {}
    msj_inscripto = {}
    msj_disponible = {}
    for f in final:
        msg_aprobada=[]
        msg = []
        msg_inscripto= []
        msg_disponible= []
        if f.examenes.materiaid in correlatividades:
            correlativas = correlatividades[f.examenes.materiaid]
            for correlativa in correlativas:
                if correlativa not in aprobadas:
                    msg.append("Materia %s No Aprobada" % correlativa)
            mensajes[f.examenes.materiaid] = ', '.join(msg)

        if f.examenes.materiaid in aprobadas:
            msg_aprobada.append("Materia Aprobada")
        msj_aprobada[f.examenes.materiaid] = ', '.join(msg_aprobada)

    return dict (final= final, alumno=alumno, inscripciones=inscripciones, aprobadas= aprobadas, desaprobadas= desaprobadas, correlatividades=correlatividades, mensajes=mensajes, msj_aprobada= msj_aprobada, msj_inscripto=msj_inscripto )
