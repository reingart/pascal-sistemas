# coding: utf8
# try something like
#como hacer funcar esto

def index(): 
    q=db.inasistencias.inasistenciaid>0
    inasistencias=dbq().select()
    return{'inasistencias':inasistencias}

def asistencias():
     
       inasistenciaid=request.args[0]
       q= db.asistencias.inasistenciaid=inasistenciaid
       q &=db.inasistencias.inasistenciaid==
    return{}

def horarios():
    ""
    return {}
    
def finales():
    ""
    return{}
    
def parciales():
    ""
    return{}
def apuntes():
    ""
    return{}
    
def recursos():
    ""
    return{}
