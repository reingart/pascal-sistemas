# coding: utf8
# intente algo #

def index(): return plugin_flatpage()


def constancia_de_alumno_regular():
   
    subtitulo= T ('Complete el formulario por favor...')
    form=SQLFORM(db.constancia)
    #db.auth_membership.insert(auth_membership.user_id== db.auth_id, auth_membership.group_id== auth_group.id)
    if form.accepts(request.vars,session):
        db.auth_membership.insert( auth_membership.user_id== auth.user_id, auth_membership.group_id== 'alumnos')
        response.flash='Usted fue agregado como alumno...'
    elif form.errors: 
        response.flash='Hay errores en el formulario!'
    else:
        response.flash='Por favor, complete el formulario!'
        
    return dict (form=form, sub=subtitulo)
    
    
 
    # armo un formulario para buscar alumno por su dni
 

def certificados_de_materias_aprobada():
    # armo un formulario para buscar alumno por su dni
    subtitulo= T ('Complete el formulario por favor...')
    form=SQLFORM(db.certificado)
    #db.auth_membership.insert(auth_membership.user_id== db.auth_id, auth_membership.group_id== auth_group.id)
    if form.accepts(request.vars,session):
        db.auth_membership.insert( auth_membership.user_id== auth.user_id, auth_membership.group_id== 'alumnos')
        response.flash='Usted fue agregado como alumno...'
    elif form.errors: 
        response.flash='Hay errores en el formulario!'
    else:
        response.flash='Por favor, complete el formulario!'
        
    return dict (form=form, sub=subtitulo)
    
    
    
def titulo_en_tramite():
    subtitulo= T ('Complete el formulario por favor...')
    form=SQLFORM(db.tituloentramite)
    #db.auth_membership.insert(auth_membership.user_id== db.auth_id, auth_membership.group_id== auth_group.id)
    if form.accepts(request.vars,session):
        db.auth_membership.insert( auth_membership.user_id== auth.user_id, auth_membership.group_id== 'alumnos')
        response.flash='Usted fue agregado como alumno...'
    elif form.errors: 
        response.flash='Hay errores en el formulario!'
    else:
        response.flash='Por favor, complete el formulario!'
        
    return dict (form=form, sub=subtitulo)
    
def documentacion():
    subtitulo= T ('Complete el formulario por favor...')
    form=SQLFORM(db.documentacion)
    #db.auth_membership.insert(auth_membership.user_id== db.auth_id, auth_membership.group_id== auth_group.id)
    if form.accepts(request.vars,session):
        db.auth_membership.insert( auth_membership.user_id== auth.user_id, auth_membership.group_id== 'alumnos')
        response.flash='Usted fue agregado como alumno...'
    elif form.errors: 
        response.flash='Hay errores en el formulario!'
    else:
        response.flash='Por favor, complete el formulario!'
        
    return dict (form=form, sub=subtitulo)
    
    
    
def reincorporacion_de_alumnos():
   
    return {}
