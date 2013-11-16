# coding: utf8
# try something like
#como hacer funcar esto

#@auth.requires_login()
#@auth.requires_membership(role='personal') 
#def ingreso():
   # db.personal.user_id.default= auth.user_id
   # subtitulo= T ('Complete el formulario por favor...')
   # form=SQLFORM(db.personal)
   # db.auth_membership.insert(auth_membership.user_id== db.auth_id, auth_membership.group_id== auth_group.id)
    #if form.accepts(request.vars,session):
        #db.auth_membership.insert( auth_membership.user_id== auth.user_id, auth_membership.group_id== 'personal')
       # response.flash='Usted fue agregado como docente...'
    #elif form.errors: 
       # response.flash='Hay errores en el formulario!'
   # else:
        #response.flash='Por favor, complete el formulario!'
        
   # return dict (form=form, sub=subtitulo)

    
     
def busqueda():
    # armo un formulario para buscar alumno por su dni y nombre
    form = SQLFORM.factory(
        Field("dni", "integer"),
        Field("nombre", "string"),
        )
    q= db.profesores.id>0
    if form.accepts(request.vars, session):
        # buscar el docente
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
    
#@auth.requires_login()
#@auth.requires_membership(role='personal')     
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

#@auth.requires_login() 
# requiere logue para ingresar

# requiere que el logueado pertenezca al rol de personal  y/o doncente
#@auth.requires_membership(role='personal')     
def alumnoXcomision():
    comisionid=request.args[0]
    #inasistenciaid=request.args[0]
   
   
    # si me pasan en la URL el docente, lo filtro 
    q = db.comisiones.comisionid == comisionid
    #q = db.inasistencias.inasistenciaid == inasistenciaid
    
    # selecciono los alumnos que estan en la inscripcion en donde entre
    q &=db.alumnos.alumnoid == db.inscripcionescomision.alumnoid
    
    
    # Busca las comisiones que coincidan
    q &= db.comisiones.comisionid == db.inscripcionescomision.comisionid

    # Ejecuto el sql donde vienen los alumnos por comision
    alumnos=db(q).select(db.alumnos.ALL, orderby=db.alumnos.nombre)
    inasistencias=db(db.inasistencias.id>0).select(db.inasistencias.ALL)
    
     #cuando hago click en el boton guardar
    if request.vars.grabar=="GUARDAR":
        
        # en _name tenemos el nombre del checkbox
        fecha = request.vars.fecha
        for alumno in alumnos:
                alumno_id = alumno.alumnoid
                comision_id = comisionid
                inasistencia_id = 1
                # obtenemos los valores de los campos en el formulario para este alumno
                falta = request.vars["falta_%s" % alumno_id]
                inasistencia_id = request.vars["tipo_%s" % alumno_id]
                
                # si el valor es on  en el checkbox insertamos los datos del alumno en la tabla faltas. 
                if falta == "on":
                    db.faltas.insert(alumnoid= alumno_id, comisionid= comision_id,inasistenciaid=inasistencia_id,
                    fecha=fecha,cantidad=1)
  
    return {'alumnos':alumnos, 'inasistencias':inasistencias}
    

 

def horarios():
    q=db.horarios.horarioid>0
    horarios=db(q).select()
    return{'horarios':horarios}
    
#@auth.requires_login()
#@auth.requires_membership(role='personal')  
   
def finales():
    

    q =db.alumnos.alumnoid == db.inscripcionescomision.alumnoid
    
    
    # Busca las comisiones que coincidan
    q &= db.inscripcionescomision.condicion == "Regular"
    q &=  db.inscripcionescomision.comisionid ==  db.comisiones.comisionid
    alumnos=db(q).select(db.alumnos.ALL, orderby=db.alumnos.nombre , distinct= True)
    i=0
    a=0
    if request.vars.grabar=="GUARDAR":
     
        for alumno in alumnos:
            fecha= request.vars.fecha
            alumno_id= alumno.alumnoid
            #materia_id = alumno.materiaid
           # calificacion_id = 1
            nota = int(request.vars.nota[i])
            libro = request.vars.libro
            folio = request.vars.folio
            turno = request.vars.turno
            establecimiento= "I.S.T.B.P"
            a=5
                           
            db.notas.insert(nota=nota ,fecha=fecha,alumnoid=alumno_id,libro=libro,folio=folio, establecimiento=establecimiento,turno=turno) 
            i= i+1  
   

    return{'alumnos':alumnos,'a':a}
    
    
def parciales():
    ""
    return{}
    
    
def apuntes():
    
    if request.vars.GRABAR=="GUARDAR":
        fecha = request.vars.fecha
        descripcion =  request.vars.descripcion         
        db.apuntes.insert(fecha=fecha, descripcion=descripcion)               
   
    return{}
    
def recursos():
    ""
    return{}
    
def unidad():
    ""
    return{}

#@auth.requires_login()
#@auth.requires_membership(role='personal')       
def ficha():
    # obtengo el id de la url (primer argumento por posicion):
   
    personalid = request.args[0]
    horarioid = request.args[0]
    horaid = request.args[0]

    
        
    # obtengo el registro del docente
    horario = db.horarios[horarioid]
    
        
    # obtengo el registro del docente
    docente = db.personal[personalid]
    hora = db.horas[horaid]

    q = db.comisiones.personalid == personalid
    comisiones = db(q).select()
    
    
    q &= db.horarios.horarioid == horarioid
    horarios = db(q).select(db.horarios.ALL)
    
    q &= db.horas.horaid == horaid
    horas = db(q).select(db.horas.ALL)
    
  
    return {'docente':docente, 'comisiones':comisiones, 'horario':horario, 'horarios':horarios, 'horas':horas,'hora':hora}
    
    
#@auth.requires_login()
#@auth.requires_membership(role='personal')     
def altas():
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
