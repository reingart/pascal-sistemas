# coding: utf8
# try something like
#como hacer funcar esto
def busqueda():
    # armo un formulario para buscar alumno por su dni
    form = SQLFORM.factory(
        Field("dni", "integer"),
        Field("nombre", "string"),
        )
    q= db.profesores.id>0
    if form.accepts(request.vars, session):
        # buscar el alumno
        if form.vars.dni:
            q &= db.personal.dni == form.vars.dni
        if form.vars.nombre:    
            q &= db.personal.nombre.contains(form.vars.nombre)
        docente = db(q).select().first()
        
        
        if docente:
            # encontrado, redirigo a cargar notas por 
            redirect(URL(f=index, vars={'personalid': docente.personal.personalid}))
            
        else:
            response.flash = "docente no encontrado"
    #response.view = "generic.html"  # HACER una vista de verdad
    return dict (form = form)
    
    
def index():
    if request.vars:
        # si me pasan en la URL el docente, lo filtro 
        q=db.personal.personalid == request.vars['personalid']

        redirect(URL(f=ficha, vars={'personalid': docente.personal.personalid}))

        
    else:
        # sino, busco todos los docentes
        q=db.personal.personalid>0
    docentes=db(q).select(orderby=db.personal.nombre)
    return{'docentes':docentes}
    
def alumnoXcomision():
    form=SQLFORM.factory (
               Field('fecha', 'date', default=request.now.date()),
               )
    if request.vars:
        # si me pasan en la URL el docente, lo filtro 
        q=db.alumnos.alumnoid == request.vars['alumnoid']

        #redirect(URL(f=ficha, vars={'personalid': docente.personal.personalid}))

        
    else:
        # sino, busco todos los docentes
        q=db.alumnos.alumnoid>0
    alumnos=db(q).select(orderby=db.alumnos.nombre)
    return{'alumnos':alumnos, 'form': form}
    

 

def horarios():
    q= db.horarios.horaid==db.horas.horaid
    q &= db.horarios.comisionid== db.comisiones.comisionid
    q &= db.comisiones.personalid== db.personal.personalid
    q &= db.comisiones.materiaid== db.materias.materiaid
    filas= db(q).select(db.horas.hora, db.personal.nombre, db.materias.nombre, db.horarios.dia)
    
    horario = {'lunes':{},'martes':{},'miercoles':{},'jueves':{},'viernes':{}}
    # horario es una estructura cuya clave es el dia y el valor es otro diccionario....
    #  {'lunes': {1: fila} ... }
    for fila in filas:
        horario[fila.horarios.dia][fila.horas.hora]=fila
        
    return dict (horario=horario)
    return{'horarios':horarios}
    
    
def finales():
    q=db.notas.notaid>0
    notas=db(q).select()
    return{'notas':notas}
    
    
def parciales():
    ""
    return{}
def apuntes():
    
    ""
    return{}
    
def recursos():
    ""
    return{}
    
def asistencias():
    
    ""
  
    return {}
    
def ficha():
    # obtengo el id de la url (primer argumento por posicion):
   
    personalid = request.args[0]
    
        
    # obtengo el registro del docente
    docente = db.personal[personalid]

    q = db.comisiones.personalid == personalid
    comisiones = db(q).select()
  
    return {'docente':docente, 'comisiones':comisiones}
    
    
    
def ingreso():
    db.personal.user_id.default= auth.user_id
    subtitulo= T ('Complete el formulario por favor...')
    form=SQLFORM(db.personal)
    if form.accepts(request.vars,session):
        response.flash='Usted fue agregado como docente...'
    elif form.errors: 
        response.flash='Hay errores en el formulario!'
    else:
        response.flash='Por favor, complete el formulario!'
    return dict (form=form, sub=subtitulo)
