def cargar_docentes():
    # Antes de insertar borramos los registros de la tabla
    
    db(db.personal.personalid>0).delete()  

    # Insertamos los nombres de los profesores
    
    db.personal.insert(personalid=2, nombre="Reingart Mariano",dni=111111,
    domicilio="La adea 344",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=7899765,titulos="ingenierio en sistemas",otorgadospor="pepe alberto",
    fechaotorgamiento="",apto="si",nombramiento="",cuil=1234577,cargoid=1,seccionid=2)
    
    db.personal.insert(personalid=3, nombre="Amarilla Hector",dni=434343,
    domicilio="Sarmiento 2333",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=8568899,titulos="ingenierio en sistemas",otorgadospor="Jose  Rodriguez", apto="nose",
    nombramiento="",cuil=8799999, cargoid=2,seccionid=2)

    db.personal.insert(personalid=4, nombre="Vargas Claudia",dni=4545,nacimiento="",
    domicilio="La amistad 4443",localidad="Merlo",cp=1759,provincia="Buenos Aires",
    telefono=7899765,titulos="Contaduria",otorgadospor="Juan Repeo",
    apto="nose",cuil=7876669,cargoid=2,seccionid=2)
    
    db.personal.insert(personalid=5, nombre="Bravo Angel",dni=9897,
    domicilio="Cerro Negro 54",localidad="America ",cp=1759,provincia="Buenos Aires",
    telefono=7899765, titulos="ingenieria en sistemas",otorgadospor="Norberto Gonzalez",
    apto="nose",cuil=76969989,cargoid=1,seccionid=2)
    
    db.personal.insert(personalid=6, nombre="Aguirre Elena",dni=57865,nacimiento="",
    domicilio="Ferrete Perez 233",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=6888899,titulos="Psicopedagoga",otorgadospor="Norma Villanueva",
    apto="nose",cuil=545465456,cargoid=2,seccionid=2)
    
    db.personal.insert(personalid=7, nombre="Media Luz",dni=754645657,
    domicilio="Larrea 455",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=436777,titulos="Analisis de sistemas",otorgadospor="Angel Bravo",
    apto="nose",nombramiento="",cuil=9679679,cargoid=1,seccionid=2)
    
    db.personal.insert(personalid=8, nombre="Gonzalez Jose",dni=79588,
    domicilio="no tengo idea",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=5474868787,titulos="Profesor de Matematica",otorgadospor="Ruben Olmedo",
    apto="nose",cuil=7896969,cargoid=1,seccionid=2)
    
    db.personal.insert(personalid=9, nombre="Profesor de Ingles",dni=545353,
    domicilio="no tengo idea",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=6576765757,titulos="Profesora de  ingles",otorgadospor="Josefa Rosales",
    apto="nose",nombramiento="",cuil=5476476475,cargoid=1,seccionid=2)
    
    db.personal.insert(personalid=10, nombre="Profesor de Historia",dni=6465464,nacimiento="",
    domicilio="Leyria 2332",localidad="Azu",cp=1759,provincia="Buenos Aires",
    telefono=5474755,titulos="Profesor de historia",otorgadospor="Alberto Pepeto",
    apto="nose",nombramiento="",cuil=6587568,cargoid=2,seccionid=2)
    

    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.personal.personalid>0).select()}




def cargar_cursos():
    # Antes de insertar borramos los registros de la tabla
    
    db(db.cursos.cursoid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.cursos.insert(cursoid= 1, curso="sistemas", codigo=3, nivel=3, anio=2013, seccion="sistemas", division=3, orden=2)
    

    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.cursos.cursoid>0).select()}




def cargar_profesores():
    # Antes de insertar borramos los registros de la tabla
    
    db(db.profesores.profesorid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.profesores.insert(profesorid= 1, personalid=2, comisionid=1, cargoid=1, revistaid=1, 
    licencia=True, detalle="Recibido en 2010", ref=",modelo",id=1)
    
    db.profesores.insert(profesorid= 2, personalid=3, comisionid=2, cargoid=2, revistaid=1,
    licencia=True, detalle="nose que poner aca", ref=",modelo",id=1)
     
    db.profesores.insert(profesorid= 3, personalid=4, comisionid=4, cargoid=1, revistaid=1, 
    licencia=True, detalle="nose que poner aca", ref=",modelo",id=1)
    
    db.profesores.insert(profesorid= 4, personalid=5, comisionid=5, cargoid=1, revistaid=1, 
    licencia=True, detalle="nose que poner aca", ref=",modelo",id=1)
    
    db.profesores.insert(profesorid= 5, personalid=6, comisionid=6, cargoid=1, revistaid=1, 
    licencia=True, detalle="nose que poner aca", ref=",modelo",id=1)
    
    db.profesores.insert(profesorid= 6, personalid=7, comisionid=7, cargoid=1, revistaid=1,
    licencia=True, detalle="nose que poner aca", ref=",modelo",id=1)
    
    db.profesores.insert(profesorid= 7, personalid=8, comisionid=8, cargoid=1, revistaid=1, 
    licencia=True, detalle="nose que poner aca", ref=",modelo",id=1)
    
    db.profesores.insert(profesorid= 8, personalid=9, comisionid=9, cargoid=2, revistaid=1,
    licencia=True, detalle="nose que poner aca", ref=",modelo",id=1)
    
    db.profesores.insert(profesorid= 9, personalid=10, comisionid=10, cargoid=1, revistaid=1, 
    licencia=True, detalle="nose que poner aca", ref=",modelo",id=1)
    

    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.profesores.profesorid>0).select()}


def cargar_cargos():
    # Antes de insertar borramos los registros de la tabla
    
    db(db.cargos.cargoid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.cargos.insert(cargoid= 1, cargo="titular")
    db.cargos.insert(cargoid= 2, cargo="suplente")
   

    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.cargos.cargoid>0).select()}
    
    
def cargar_horarios():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.horarios.horarioid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.horarios.insert(horarioid= 1, horaid=20,dia="martes",materiaid=1,detalle="")
    db.horarios.insert(horarioid= 2, horaid=20,dia="miercoles",materiaid=2,detalle="")
    db.horarios.insert(horarioid= 3, horaid=18,dia="lunes",materiaid=3,detalle="")
    db.horarios.insert(horarioid= 4, horaid=17,dia="martes",materiaid=4,detalle=" ")
    db.horarios.insert(horarioid= 5, horaid=20,dia="viernes",materiaid=5,detalle="")
    db.horarios.insert(horarioid= 6, horaid=19,dia="jueves",materiaid=6,detalle="")
   

    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.horarios.horarioid>0).select()}
    
def cargar_materias():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.materias.materiaid>0).delete()  
    
    # Insertamos los cursos correspondientes
    
    db.materias.insert(materiaid= 1, materia="Matematica",resumen="",cursoid=1,catedraid=1,codigo="",orden=False,
    optativa=False,analitico="",requerida=True)
    
    response.view="generic.html"
    
    # Devuelvo una conrevistaid contenido de la tabla
    
    return {'filas': db(db.materias.materiaid>0).select()}
    
    
    
    
def cargar_revista():
    
    # Antes de insertar borramos los registros de la tabla    
    
    db(db.revistas.revistaid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.revistas.insert(revistaid=1, revista="")
    
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.revistas.revistaid>0).select()}
    
    
    
    
def cargar_inasistencias():
    
    # Antes de insertar borramos los registros de la tabla    
    
    db(db.inasistencias.inasistenciaid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.inasistencias.insert(inasistenciaid=1, inasistencia="p",tarde=False)

    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.inasistencias.inasistenciaid>0).select()}
    
    
def cargar_horas():
    # Antes de insertar borramos los registros de la tabla    
    
    db(db.horas.horaid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.horas.insert(horaid=1, hora="20",desde="",hasta="",nivelid=1)
    
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.horas.horaid>0).select()}
