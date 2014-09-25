# coding: utf8
# try something like
def index():
    q=db.carreras.carreraid>0
    carreras=db(q).select()
    return{'carreras':carreras}

def materias():
    carreraid=request.args[0]
    q= db.asignaturas.carreraid==carreraid
    q &= db.asignaturas.carreraid==db.carreras.carreraid
    q &= db.asignaturas.materiaid==db.materias.materiaid
    q &= db.asignaturas.cursoid==db.cursos.cursoid

    filas=db(q).select()
    return{'filas': filas}

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

def salud_radiologia():
    return {}

def redes():
    return {}
    
def programas():
    
    return{}

def index():
    q=db.horarios.horarioid>0
    horarios=db(q).select()
    return{'horarios':horarios}

def horarios():

    horariosid=request.args[0]
    q= db.horarios.horaid==horarioid
    q &= db.horarios.horaid==db.hora.horaid
    q &= db.horarios.comisionid==db.comision.comisionid
    q &= db.horarios.diaid==db.dia.diaid
   
    filas=db(q).select()
    return{'filas': filas}

def metodologia():
    return {}
