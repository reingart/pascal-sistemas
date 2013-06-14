# coding: utf8
# try something like
def index(): return plugin_flatpage()

def iniciar():
    return{}

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
