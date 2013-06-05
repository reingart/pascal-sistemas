# coding: utf8
# try something like
#como hacer funcar esto

def index():
    q=db.personal.personalid>0
    docentes=db(q).select()
    return{'docentes':docentes}

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
