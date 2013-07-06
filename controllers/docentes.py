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
    docentes=db(q).select()
    return{'docentes':docentes}

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
    ""
    
    return{}
    
def ficha():
    # obtengo el id de la url (primer argumento por posicion):
   
    personalid = request.args[0]
        
    # obtengo el registro del docente
    docente = db.personal[personalid]
    
    q = db.comisiones.personalid == personalid
    comisiones = db(q).select()
  
    return {'docente':docente, 'comisiones':comisiones}
