def cargar_docentes():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.personal.personalid>0).delete()  

    # Insertamos los nombres de los profesores
    
    db.personal.insert(personalid=2,E_mail='reingart@gmail.com',facebook='Mariano Reingart', nombre="Reingart Mariano",dni=111111,nacimiento= "",
    domicilio="Necochea 1132",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=7899765,titulos="ingenieria en sistemas",otorgadospor="pepe alberto",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=1234577,cargoid=1,foto='mariano')
    
    db.personal.insert(personalid=3,E_mail='HectorAmarilla@gmail.com',facebook='Hector Amarilla', nombre="Amarilla Hector",dni=434343,nacimiento="",
    domicilio="Laprida 4567",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=8568899,titulos="ingenieria en sistemas",otorgadospor="Jose Rodriguez",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=8799999,cargoid=2)
    
    db.personal.insert(personalid=4,E_mail='vargasclaudia@gmail.com',facebook='Maria Claudi Vargas', nombre="Vargas Claudia",dni=4545,nacimiento="",
    domicilio="San Juan 1122",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=7899765,titulos="Contaduria",otorgadospor="Juan Repeto",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=7876669,cargoid=2)
    
    db.personal.insert(personalid=5,E_mail='Angelbravo@gmail.com',facebook='Angel Bravo', nombre="Bravo Angel",dni=9897,nacimiento="",
    domicilio="Rivas 1450",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=7899765,titulos="ingenieria en sistemas",otorgadospor="Norberto Gonzalez",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=76969989,cargoid=1)
    
    db.personal.insert(personalid=6, E_mail='Aguihelena@gmail.com',facebook='Aguirre Helena',nombre="Aguirre Elena",dni=57865,nacimiento="",
    domicilio="Sarmiento 1120",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=6888899,titulos="Psicopedagoga",otorgadospor="Norma Villanueva",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=545465456,cargoid=2)
    
    db.personal.insert(personalid=7,E_mail='Medinaluz@gmail.com',facebook='Luz Medina', nombre="Media Luz",dni=754645657,nacimiento="",
    domicilio="Claudia Sifre 1112",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=436777,titulos="Analisis de sistemas",otorgadospor="Angel Bravo",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=9679679,cargoid=1)
    
    db.personal.insert(personalid=8, E_mail='Josegonzalez@gmail.com',facebook='Jose Gonzalez',nombre="Gonzalez Jose",dni=79588,nacimiento="",
    domicilio="Lasalle 456",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=5474868787,titulos="Profesor matematica",otorgadospor="Ruben Olmedo",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=7896969,cargoid=1)
    
    db.personal.insert(personalid=9, E_mail='roselli@gmail.com',facebook='Andrea Roselli',nombre="Andrea Roselli ",dni=545353,nacimiento="",
    domicilio="Melian  567",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=6576765757,titulos="Profesora de  ingles",otorgadospor="Josefa Rosales",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=5476476475,cargoid=1)
    
    db.personal.insert(personalid=10,E_mail='adriana@gmail.com',facebook='Adriana ', nombre="Adriana",dni=6465464,nacimiento="",
    domicilio="Rivera Indarte 567",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=5474755,titulos="Profesor de historia",otorgadospor="Alberto Pepeto",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=6587568,cargoid=2)

    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
   
    return {'filas': db(db.personal.personalid>0).select()}




def cargar_cursos():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.cursos.cursoid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.cursos.insert(cursoid= 1, nombre="Primer a�o", codigo=1, nivel=3, anio=2013, seccion="A", division=4, orden=1)
    db.cursos.insert(cursoid= 2, nombre="Segundo a�o", codigo=2, nivel=3, anio=2013, seccion="B", division=3, orden=2)
    db.cursos.insert(cursoid= 3, nombre="Tercer a�o", codigo=3, nivel=3, anio=2013, seccion="C", division=3, orden=3)
    

    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.cursos.cursoid>0).select()}




def cargar_profesores():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.profesores.profesorid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.profesores.insert(profesorid= 1, personalid=2, comisionid=1, cargoid=1, revistaid=1,
    licencia=True, detalle="nose que poner aca", ref=",modelo",id=1)
    
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
    
    db.cargos.insert(cargoid= 1, descripcion="Administrativo")
    db.cargos.insert(cargoid= 2, descripcion="Profesor")
    db.cargos.insert(cargoid= 3, descripcion="Porteria")
   

    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.cargos.cargoid>0).select()}
    
    
def cargar_horarios():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.horarios.horarioid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.horarios.insert(horarioid= 1, personalid=7,horaid=20,dia="martes",materiaid=1,detalle="")
    db.horarios.insert(horarioid= 2,personalid=2, horaid=20,dia="miercoles",materiaid=2,detalle="")
    db.horarios.insert(horarioid= 3,personalid=3 ,horaid=18,dia="lunes",materiaid=3,detalle="")
    db.horarios.insert(horarioid= 4,personalid=7, horaid=17,dia="martes",materiaid=4,detalle=" ")
    db.horarios.insert(horarioid= 5, personalid=4,horaid=20,dia="viernes",materiaid=5,detalle="")
    db.horarios.insert(horarioid= 6,personalid=5, horaid=19,dia="jueves",materiaid=6,detalle="")
   

    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.horarios.horarioid>0).select()}
    

    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.materias.materiaid>0).delete()  
    
    # Insertamos los cursos correspondientes
    db.materias.insert(materiaid= 1, materia="Matematica",resumen="",cursoid=1,catedraid=1,
    codigo="",orden=False,optativa=False,analitico="",requerida=True)
    
    db.materias.insert(materiaid= 1, materia=" Analisis Matematico",resumen="",cursoid=1,catedraid=1,
    codigo="c1m02",orden=1,optativa=False,analitico="",requerida=True)
    
    db.materias.insert(materiaid= 2, materia="Algebra",resumen="",cursoid=1,catedraid=1,
    codigo="c1m01",orden=2,optativa=False,analitico="",requerida=True)
    
    db.materias.insert(materiaid= 3, materia="Ingels tecnico",resumen="",cursoid=1,catedraid=1,
    codigo="c1m03",orden=2,optativa=False,analitico="",requerida=True)
    
    db.materias.insert(materiaid= 3, materia="Administracion de las organizaciones",resumen="",cursoid=1,catedraid=1,
    codigo="c1m04",orden=2,optativa=False,analitico="",requerida=True)
    
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.materias.materiaid>0).select()}
    
    
    
    
def cargar_revista():
    
    # Antes de insertar borramos los registros de la tabla    
    
    db(db.revistas.revistaid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.revistas.insert(revistaid=1, nombre="Titular")
    db.revistas.insert(revistaid=1, nombre="Suplente")
    
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.revistas.revistaid>0).select()}
    
    
    
    
def cargar_inasistencias():
    
    # Antes de insertar borramos los registros de la tabla    
    
    db(db.inasistencias.inasistenciaid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.inasistencias.insert(inasistenciaid=1, descripcion="Presente",tarde=False)
    db.inasistencias.insert(inasistenciaid=2, descripcion="Media falta",tarde=True)
    
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.inasistencias.inasistenciaid>0).select()}
    
    
def cargar_horas():
    
   # Antes de insertar borramos los registros de la tabla    
   
   db(db.horas.horaid>0).delete()  

    # Insertamos los cursos correspondientes
   
   db.horas.insert(horaid=1, hora="1",desde="18",hasta="20",nivelid=1)
   db.horas.insert(horaid=2, hora="2",desde="20",hasta="22",nivelid=1)
    
   response.view="generic.html"
   
     # Devuelvo una consulta del contenido de la tabla
   
   return {'filas': db(db.horas.horaid>0).select()}


def cargar_examenes():
    # Antes de insertar borramos los registros de la tabla    
    
    db(db.examenes.examenid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.examenes.insert(examenid=1, materiaid=2,periodoid=3,llamado=1,turno= "Noche",fecha="",hora="",personalid1=1,personalid2=2,personalid3=4)
    db.examenes.insert(examenid=2, materiaid=3,periodoid=4,llamado=2,turno= "Noche",fecha="",hora="",personalid1=1,personalid2=2,personalid3=3)

    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.examenes.examenid>0).select()}




def cargar_faltas():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.faltas.faltaid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.faltas.insert(faltaid= 1, alumnoid=1, comisionid=1, inasistenciaid=1, fecha="", cantidad=1.2, justificado=True, detalle="")
    db.faltas.insert(faltaid= 2, alumnoid=2, comisionid=2, inasistenciaid=2, fecha="", cantidad=1.4, justificado=False, detalle="")
    db.faltas.insert(faltaid= 3, alumnoid=3, comisionid=3, inasistenciaid=3, fecha="", cantidad=2.8, justificado=True, detalle="")
    db.faltas.insert(faltaid= 4, alumnoid=4, comisionid=4, inasistenciaid=4, fecha="", cantidad=2.8, justificado=True, detalle="")
    db.faltas.insert(faltaid= 5, alumnoid=5, comisionid=5, inasistenciaid=5, fecha="", cantidad=2.8, justificado=True, detalle="")

    

    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.faltas.faltaid>0).select()}
