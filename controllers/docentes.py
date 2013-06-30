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
    
    i=0
    asistencias = db().select (db.faltas.ALL, distinct = True)
     
    listado=[]
    listado.append(TABLE(TR(
           
           TH('ALUMNO',_style='width:200px; color:#000; background: #99f; border: 2px solid #cdcdcd'),
           TH('COMISION',_style='width:200px; color:#000; background: #99f; border: 2px solid #cdcdcd'),
           TH('INASISTENCIAID',_style='width:200px; color:#000; background: #99f; border: 2px solid #cdcdcd'),
           TH('FECHA',_style='width:200px; color:#000; background: #99f; border: 2px solid #cdcdcd'),
           TH('CANTIDAD',_style='width:200px; color:#000; background: #99f; border: 2px solid #cdcdcd'),
           TH('JUSTIFICADO',_style='width:200px; color:#000; background: #99f; border: 2px solid #cdcdcd'),
           TH('DETALLE',_style='width:200px; color:#000; background: #99f; border: 2px solid #cdcdcd')
           )))  
    
    
    
    for x in asistencias:
        listado.append(TABLE(TR(
           
           TD(x.alumnoid,_style='width:205px;background: #eef; border: 2px solid #cdcdcd'),
           TD(x.comisionid,_style='width:205px;background: #eef; border: 2px solid #cdcdcd'),
           TD(x.inasistenciaid,_style='width:205px;background: #eef; border: 2px solid #cdcdcd'),
           TD(x.fecha,_style='width:205px;background: #eef; border: 2px solid #cdcdcd'),
           TD(x.cantidad,_style='width:205px;background: #eef; border: 2px solid #cdcdcd'),
           TD(x.justificado,_style='width:205px;background: #eef; border: 2px solid #cdcdcd'),
           TD(x.detalle,_style='width:205px;background: #eef; border: 2px solid #cdcdcd')
           ))) 

    a = DIV(listado)
    
    return dict(a=a)
    
def ficha():
    # obtengo el id de la url (primer argumento por posicion):
    personalid = request.args[0]
    # obtengo el registro del docente
    docente = db.personal[personalid]
    return {'docente':docente}
