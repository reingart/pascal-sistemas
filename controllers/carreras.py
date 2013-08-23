# coding: utf8
# try something like
def index():
    q=db.carreras.carreraid>0
    carreras=db(q).select()
    return{'carreras':carreras}

def materias():
    carrerasid=request.args[0]
    q= db.asignaturas.carreraid==carreraid
    q &= db.asignaturas.carreraid==db.materias.materiaid
    q &=db.asiganturas.cursoid==db.cursos.cursoid

    filas=db(q).select()
    return{'filas':filas}

    return{}

def sistemas():
    return {}

def salud():
    return {}

def salud_enfermeria():
    return {}

def salud_cardiologia():
    return {}

def salud_laboratorio():
    return {}

def salud_auxenfermeria():
    return {}

def salud_instrumentacion():
    return {}

def salud_laboratorio():
    return {}

def salud_radiologia():
    return {}

def redes():
    return {}
def salud_cardiologia():
    return {}
