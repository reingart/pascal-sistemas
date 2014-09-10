# coding: utf8
# try something like
def index(): return plugin_flatpage()

@auth.requires_membership(role='Alumnos')
def iniciar():
    q = db.alumnos.user_id== auth.user_id    #guardo en la consulta el registro del alumno
    alumno= db(q).select().first() #traemos el alumno para notificarlo en la vista
    return {'alumno': alumno}

def consultar():
    "Listado de tramites"
    alumnoid = 1
    q = db.tramites.tramiteid == db.expedientes.tramiteid
    q &= db.estados.estadoid == db.expedientes.estadoid
    q &= db.expedientes.alumnoid == alumnoid
    regs = db(q).select()
    return {'regs': regs}

def actualizar():
    # agrega comentarios o cambia estado del tramite
    return {}
