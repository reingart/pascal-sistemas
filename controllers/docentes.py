# coding: utf8
# try something like
#como hacer funcar esto
def busqueda():
   
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
     #cuando hago click en el boton guardar
    if request.vars.grabar=="GUARDAR":
            #en _name tenemos el nombre del checkbox
        for _name,_value in request.vars.items():
            if _name.startswith ("falta"):
                alumno_id = int(_name[_name.index('_')+1:])
                comision_id = int(_name[_name.index('_')+1:])
                inasistencia_id = int(_name[_name.index('_')+1:])
                fecha = request.vars.fecha



                if _value == "on":
                    db.faltas.insert (alumnoid= alumno_id, comisionid= comision_id,inasistenciaid=inasistencia_id,fecha=fecha,cantidad=1)
   
    if request.vars:
        # si me pasan en la URL el docente, lo filtro 
        q=db.alumnos.alumnoid == request.vars['alumnoid']

        #redirect(URL(f=ficha, vars={'personalid': docente.personal.personalid}))

        
    else:
        # sino, busco todos los docentes
        q=db.alumnos.alumnoid>0
    alumnos=db(q).select(orderby=db.alumnos.nombre)
    return{'alumnos':alumnos}
    

 

def horarios():
    q=db.horarios.horarioid>0
    horarios=db(q).select()
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
    
        form = SQLFORM.factory(
        Field("materia","string"),)
        q = db.faltas.id>0
        q &= db.faltas.comisionid == db.comisiones.comisionid
        
        if form.accepts(request.vars, session):
        
        
        
              q = db.comisiones.comisionid==form.vars.nombre
              q &= db.faltas.alumnoid==db.alumnos.alumnoid    
              asistencias=db(q).select(db.comisiones.nombre, db.alumnos.nombre)
        else :
              response.flash="materia no encontrada"
        
        return{'asistencias':asistencias}

@auth.requires_login()
def ingreso():
    db.personal.user_id.default= auth.user_id
    subtitulo= T ('Complete el formulario por favor...')
    form=SQLFORM(db.personal)
    #db.auth_membership.insert(auth_membership.user_id== db.auth_id, auth_membership.group_id== auth_group.id)
    if form.accepts(request.vars,session):
        db.auth_membership.insert( auth_membership.user_id== auth.user_id, auth_membership.group_id== 'personal')
        response.flash='Usted fue agregado como docente...'
    elif form.errors: 
        response.flash='Hay errores en el formulario!'
    else:
        response.flash='Por favor, complete el formulario!'
        
    return dict (form=form, sub=subtitulo)
    
@auth.requires_login()
@auth.requires_membership(role='personal')                     
def ficha():
    # obtengo el id de la url (primer argumento por posicion):
   
    personalid = request.args[0]
    
        
    # obtengo el registro del docente
    docente = db.personal[personalid]
    
    q = db.comisiones.personalid == personalid
    comisiones = db(q).select()
  
    return {'docente':docente, 'comisiones':comisiones}
