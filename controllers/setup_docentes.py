@auth.requires_login()
def index():
    response.title="SETUP Docentes"
    response.subtitle="Menú de Cargas"
    return {}

def cargar_usuarios():
    
    # Antes de insertar borramos los registros de la tabla
    db(db.auth_user.id>0).delete()  

    # Insertamos los usuarios profesores
    db.auth_user.insert(id=1,first_name='Mariano', last_name='Reingart', email='reingart@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=2,first_name='Hector',last_name='Amarilla',email='roman.amarilla@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=3,first_name='Ángel',last_name='Bravo',email='Angelbravo@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=4,first_name='Helena',last_name='Aguirre',email='Aguihelena@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=5,first_name='Claudia',last_name='Vargas',email='vargasclaudia@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=6,first_name='Luz',last_name='Medina',email='Medinaluz@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=7,first_name='José',last_name='Gonzalez',email='Josegonzalez@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=8,first_name='Andrea',last_name='Roselli',email='roselli@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    
    #Insertamos los usuarios de alumnos
    db.auth_user.insert(id=50,first_name='Agustin',last_name='Irusta',email='agus354@hotmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=51,first_name='Diego',last_name='Luna',email='diegoluna@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=52,first_name='Romina',last_name='Llanos',email='romina9039@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=53,first_name='Debora',last_name='Mendoza',email='debomendoza@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=54,first_name='Franco',last_name='More',email='franco.more1758@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=55,first_name='Diego',last_name='Moreyra',email='diegojmoreyra@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=56,first_name='Diego',last_name='Olmos',email='tecnodiego@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=57,first_name='Sergio',last_name='Retamal',email='serxx66@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=58,first_name='Hugo',last_name='Villalba',email='VillalbaHugo@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=59,first_name='Mauro',last_name='Schiavone',email='SchiavoneM@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    db.auth_user.insert(id=60,first_name='Nahuel',last_name='Cosentino',email='CosentinoNa@gmail.com', password='sha512$aee7cfd38d9c5c15$70cd5500fd85e70464d8ad0ce728e4c85c9e7313c96168d330bf77ea91a281ff997eab9ae07a488adaba2d237680745627075585afeed079c2225b1d843ec7bb')
    #Insertamos los usuarios del personal
    
    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.auth_user.id>0).select()}  

def cargar_grupos():
    # Antes de insertar borramos los registros de la tabla
    db(db.auth_group.id>0).delete()  
    db.auth_group.insert(id=1,role='Alumnos',description='Grupo de alumnos ')
    db.auth_group.insert(id=2,role='Personal',description='Grupo del personal de la institucion ')
    db.auth_group.insert(id=3,role='Docentes',description='Grupo de docentes de la institucion ')    
    
    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.auth_group.id>0).select()}  

def cargar_membrecias():
    # Antes de insertar borramos los registros de la tabla
    db(db.auth_membership.id>0).delete()  
    db.auth_membership.insert(id=1,user_id=1,group_id=3)
    db.auth_membership.insert(id=2,user_id=2,group_id=3)
    db.auth_membership.insert(id=3,user_id=3,group_id=3)
    db.auth_membership.insert(id=4,user_id=4,group_id=3)
    db.auth_membership.insert(id=5,user_id=5,group_id=3)
    db.auth_membership.insert(id=6,user_id=6,group_id=3)
    db.auth_membership.insert(id=7,user_id=7,group_id=3)
    db.auth_membership.insert(id=8,user_id=8,group_id=3)
    db.auth_membership.insert(id=50,user_id=50,group_id=1)
    db.auth_membership.insert(id=51,user_id=51,group_id=1)
    db.auth_membership.insert(id=52,user_id=52,group_id=1)
    db.auth_membership.insert(id=53,user_id=53,group_id=1)
    db.auth_membership.insert(id=54,user_id=54,group_id=1)
    db.auth_membership.insert(id=55,user_id=55,group_id=1)
    db.auth_membership.insert(id=56,user_id=56,group_id=1)
    db.auth_membership.insert(id=57,user_id=57,group_id=1)
    db.auth_membership.insert(id=58,user_id=58,group_id=1)
    db.auth_membership.insert(id=59,user_id=59,group_id=1)
    db.auth_membership.insert(id=60,user_id=60,group_id=1)
    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.auth_membership.id>0).select()}  
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



def cargar_alumnos():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.alumnos.alumnoid>0).delete()  

    # Insertamos los nombres de los alumnos
    
    #TERCER AÑO
    db.alumnos.insert(alumnoid=1,nombre='Irusta Agustin', sexo='Masculino', user_id=50)
    db.alumnos.insert(alumnoid=2,nombre='Luna Diego', sexo='Masculino', user_id=51)
    db.alumnos.insert(alumnoid=3,nombre='Llanos Romina', sexo='Femenino', user_id=52)
    db.alumnos.insert(alumnoid=4,nombre='Mendoza Debora', sexo='Femenino', user_id=53)
    db.alumnos.insert(alumnoid=5,nombre='More Franco', sexo='Masculino', user_id=54)    
    db.alumnos.insert(alumnoid=6,nombre='Moreyra Diego', sexo='Masculino', user_id=55)    
    db.alumnos.insert(alumnoid=7,nombre='Olmos Diego', sexo='Masculino', user_id=56)
    db.alumnos.insert(alumnoid=8,nombre='Retamal Sergio', sexo='Masculino', user_id=57)
    db.alumnos.insert(alumnoid=9,nombre='Villalba Hugo', sexo='Masculino', user_id=58)
    db.alumnos.insert(alumnoid=10,nombre='Schiavone Mauro', sexo='Masculino', user_id=59)
    db.alumnos.insert(alumnoid=11,nombre='Cosentino Nahuel', sexo='Masculino', user_id=60)
    #SEGUNDO AÑO
    db.alumnos.insert(alumnoid=12,nombre='Blanco Juan Pablo', sexo='Masculino')
    db.alumnos.insert(alumnoid=13,nombre='Hernando Patricio', sexo='Masculino')
    db.alumnos.insert(alumnoid=14,nombre='Mamani Nestor', sexo='Masculino')
    db.alumnos.insert(alumnoid=15,nombre='Zameberlan Paolo', sexo='Masculino')
    db.alumnos.insert(alumnoid=16,nombre='Florentin Claudio', sexo='Masculino')
    db.alumnos.insert(alumnoid=17,nombre='Leguizamon Pedro', sexo='Masculino')
    db.alumnos.insert(alumnoid=18,nombre='Decimo Damian', sexo='Masculino')
    db.alumnos.insert(alumnoid=19,nombre='Ragonese Ruben', sexo='Masculino')
    
    

    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.alumnos.alumnoid>0).select()}

    
def cargar_cursos():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.cursos.cursoid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.cursos.insert(cursoid= 1, nombre="Primer a\xc3\xb1o", codigo=1, nivel=3, anio=2013, seccion="A", division=4, orden=1)
    db.cursos.insert(cursoid= 2, nombre="Segundo a\xc3\xb1o", codigo=2, nivel=3, anio=2013, seccion="B", division=3, orden=2)
    db.cursos.insert(cursoid= 3, nombre="Tercer a\xc3\xb1o", codigo=3, nivel=3, anio=2013, seccion="C", division=3, orden=3)
    db.cursos.insert(cursoid= 4, nombre="Primer a\xc3\xb1o", codigo=4, nivel=3, anio=2014, seccion="A", division=4, orden=1)
    db.cursos.insert(cursoid= 5, nombre="Segundo a\xc3\xb1o", codigo=5, nivel=3, anio=2014, seccion="B", division=3, orden=2)
    db.cursos.insert(cursoid= 6, nombre="Tercer a\xc3\xb1o", codigo=6, nivel=3, anio=2014, seccion="C", division=3, orden=3)


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
    
def cargar_carreras():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.carreras.id>0).delete()  

    # Insertamos las carreras correspondientes
    db.carreras.insert(carreraid=1,nombre='Tecnicatura Superior en Analisis de Sistemas')
    db.carreras.insert(carreraid=2,nombre='Tecnicatura Superior en Enfermer\xc3\xada')
    db.carreras.insert(carreraid=3,nombre='Tecnicatura Superior en Instrumentaci\xc3\xb3n Quir\xc3\xbargica ')
    db.carreras.insert(carreraid=4,nombre='Tecnicatura Superior en Laboratorio de An\xc3\xa1lisis Cl\xc3\xadnicos')
    db.carreras.insert(carreraid=5,nombre='Tecnicatura Superior en Radiolog\xc3\xada')
    db.carreras.insert(carreraid=6,nombre='Tecnicatura Superior en Cardiologia')
    db.carreras.insert(carreraid=7,nombre='Tecnicatura Superior en Redes Informaticas')

    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.carreras.id>0).select()}

def cargar_ciclos():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.ciclos.id>0).delete()  

    # Insertamos los ciclos correspondientes
    
    response.view="generic.html"
    db.ciclos.insert(cicloid=1,nombre='Ciclo Lectivo 2010',anio=2010,detalle=None,desde='2010-01-01',hasta='2010-12-31')
    db.ciclos.insert(cicloid=2,nombre='Ciclo Lectivo 2011',anio=2011,detalle=None,desde='2011-01-01',hasta='2011-12-31')
    db.ciclos.insert(cicloid=3,nombre='Ciclo Lectivo 2012',anio=2012,detalle=None,desde='2012-01-01',hasta='2012-12-31')
    db.ciclos.insert(cicloid=4,nombre='Ciclo Lectivo 2013',anio=2013,detalle=None,desde='2013-01-01',hasta='2013-12-31')
    db.ciclos.insert(cicloid=5,nombre='Ciclo Lectivo 2014',anio=2014,detalle=None,desde='2014-01-01',hasta='2014-12-31')
    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.ciclos.id>0).select()}

def cargar_materias():
    # Antes de insertar borramos los registros de la tabla
    db(db.materias.id>0).delete()
    
    db.materias.insert(materiaid=47,codigo=800,nombre='SALUD PUBLICA',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=48, codigo=801, nombre='INFORMATICA', resumen='', cursoid=1, catedraid=3, orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=49,codigo=802,nombre='BIOLOG\xc3\x8dA I',resumen='',cursoid=1,catedraid=3, orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=50,codigo=803,nombre='FUND. DE LAS CIENCIAS EXACTAS',resumen='',cursoid=1,catedraid=3, orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=51,codigo=804,nombre='PROCESOS TECNOLOGICOS EN SALUD I',resumen='',cursoid=1,catedraid=3, orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=52,codigo=805,nombre='PROCESOS TECNOLOGICOS EN SALUD II',resumen='',cursoid=1,catedraid=3, orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=53,codigo=806,nombre='EDI',resumen='',cursoid=1,catedraid=3, orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=54,codigo=807,nombre='ESPACIO DE LA PRACTICA',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=55,codigo=808,nombre='ORG. Y GESTI\xc3\x93N DE LOS SERV. DE SALUD ',resumen='',cursoid=2,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=56,codigo=809,nombre='BIOLOG\xc3\x8dA II',resumen='',cursoid=2,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=57,codigo=810,nombre='METODOLOG\xc3\x8dA DE LA INVESTIGACION',resumen='',cursoid=2,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=58,codigo=811,nombre='SEGURIDAD E HIGIENE',resumen='',cursoid=2,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=59,codigo=812,nombre='EDI II',resumen='',cursoid=2,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=60,codigo=813,nombre='CENTRO Y ACTO QUIRURGICO',resumen='',cursoid=2,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=61,codigo=814,nombre='ATENCI\xc3\x93N DEL PACIENTE QUIR\xc3\x9aRGICO Y LA EMERGENCIA',resumen='',cursoid=2,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=62,codigo=815,nombre='ANATOM\xc3\x8dA Y T\xc3\x89CNICA QUIR\xc3\x9aRGICA I  ',resumen='',cursoid=2,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=63,codigo=816,nombre='PRACTICA ',resumen='',cursoid=2,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=64,codigo=817,nombre='INV. EN SERV. DE SALUD',resumen='',cursoid=3,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=65,codigo=818,nombre='INGLES',resumen='',cursoid=3,catedraid=3, orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=66,codigo=819,nombre='BIOETICA',resumen='',cursoid=3,catedraid=3, orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=67,codigo=820,nombre='ANATOM\xc3\x8dA Y T\xc3\x89CNICA QUIR\xc3\x9aRGICA  ',resumen='',cursoid=3,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=68,codigo=821,nombre='INT. A LA GESTI\xc3\x93N DEL CENTRO QUIRURG. ',resumen='',cursoid=3,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=69,codigo=822,nombre='EDI III',resumen='',cursoid=3,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=70,codigo=823,nombre='PRACTICA ',resumen='',cursoid=3,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=71,codigo=700,nombre='SALUD PUBLICA',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=72,codigo=701,nombre='INFORMATICA',resumen=None,cursoid=1,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=73,codigo=702,nombre='BIOLOGIA I',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=74,codigo=703,nombre='FUND. DE LAS CIENCIAS EXACTAS',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=75,codigo=704,nombre='PROCESOS TECNOLOGICOS EN SALUD I',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=76,codigo=705,nombre='PROCESOS TECNOLOGICOS EN SALUD II',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=77,codigo=706,nombre='EDI',resumen=None,cursoid=1,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=78,codigo=707,nombre='ESPACIO DE LA PRACTICA',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=79,codigo=708,nombre='ORG. Y GESTION DE LOS SERV. DE SALUD',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=80,codigo=709,nombre='BIOLOGIA II',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=81,codigo=710,nombre='METODOLOGIA DE LA INVESTIGACION',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=82,codigo=711,nombre='SEGURIDAD E HIGIENE',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=83,codigo=712,nombre='EDI II',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=84,codigo=713,nombre='QUIMICA BIOLOGICA',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=85,codigo=714,nombre='ADMISION DE PACIENTES',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=86,codigo=715,nombre='PROCED. TECNICOS NORMALIZADOS',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=87,codigo=716,nombre='PRACTICA',resumen=None,cursoid=2,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=88,codigo=717,nombre='INVEST. DE LOS SERV. DE SALUD',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=89,codigo=718,nombre='INGLES',resumen=None,cursoid=3,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=90,codigo=719,nombre='BIOETICA',resumen=None,cursoid=3,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=91,codigo=720,nombre='ADMISION DE PACIENTES II',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=92,codigo=721,nombre='PROC. TECNICOS NORMALIZADOS II',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=93,codigo=722,nombre='CONTROL DE CALIDAD',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=94,codigo=723,nombre='GESTION DE LABORATORIO',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=95,codigo=724,nombre='EDI III',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=96,codigo=725,nombre='PRACTICA',resumen=None,cursoid=3,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=97,codigo=600,nombre='SALUD PUBLICA',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=98,codigo=601,nombre='INFORMATICA',resumen=None,cursoid=1,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=99,codigo=602,nombre='BIOLOGIA I',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=100,codigo=603,nombre='FUND. DE LAS CIENCIAS EXACTAS',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=101,codigo=604,nombre='PROCESOS TECNOLOGICOS EN SALUD I',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=102,codigo=605,nombre='PROCESOS TECNOLOGICOS EN SALUD II',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=103,codigo=606,nombre='EDI',resumen=None,cursoid=1,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=104,codigo=607,nombre='ESPACIO DE LA PRACTICA',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=105,codigo=608,nombre='ORG. Y GESTION DE LOS SERV. DE SALUD',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=106,codigo=609,nombre='BIOLOGIA II',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=107,codigo=610,nombre='METODOLOGIA DE LA INVESTIGACION',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=108,codigo=611,nombre='SEGURIDAD E HIGIENE',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=109,codigo=612,nombre='EDI II',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=110,codigo=613,nombre='FUND. DE ANATOMOFISIOLOGIA',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=111,codigo=614,nombre='TECNICAS RADIOLOGICAS I',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=112,codigo=615,nombre='TECNICAS RADIOLOGICAS II',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=113,codigo=616,nombre='RADIOFISICA I',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=114,codigo=617,nombre='FUNDAMENTOS DE PATOLOGIA',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=115,codigo=618,nombre='PRACTICA',resumen=None,cursoid=2,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=116,codigo=619,nombre='INV. EN SERV. DE SALUD',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=117,codigo=620,nombre='INGLES',resumen=None,cursoid=3,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=118,codigo=621,nombre='BIOETICA',resumen=None,cursoid=3,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=119,codigo=622,nombre='RADIOFISICA II',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=120,codigo=623,nombre='TECNOLOGIAS RADIOLOGICAS III',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=121,codigo=624,nombre='TECNOLOGIAS RADIOLOGICAS VI',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=122,codigo=625,nombre='RADIOTERAPIA',resumen=None,cursoid=3,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=123,codigo=626,nombre='EDI III',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=124,codigo=627,nombre='PRACTICA',resumen=None,cursoid=3,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=125,codigo=900,nombre='SALUD PUBLICA',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=126,codigo=910,nombre='EST. Y FUNCION DEL CUERPO HUMANO',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=127,codigo=911,nombre='BIOFISICA Y BIOQUIMICA',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=128,codigo=912,nombre='MICROBIOLOGIA Y PARASITOLOGIA',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=129,codigo=913,nombre='FUNDAMENTOS DE NUTRICION',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=130,codigo=914,nombre='ENFERM. FUND. PRACT. Y TENDENCIAS',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=131,codigo=915,nombre='ENFERMERIA MATERNO INFANTIL I',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=132,codigo=916,nombre='FARMACOLOGIA EN ENFERMERIA',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=133,codigo=917,nombre='PRACTICA I',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=134,codigo=918,nombre='INT. A LA INVESTIGACION EN SALUD',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=135,codigo=919,nombre='EPIDEMIOLOGIA Y ESTADISTICA EN SALUD',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=136,codigo=920,nombre='INFORMATICA',resumen=None,cursoid=2,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=137,codigo=921,nombre='ENFERMERIA DEL ADULTO Y EL ANCIANO',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=138,codigo=922,nombre='DIETETICA EN ENFERMERIA',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=139,codigo=923,nombre='ENFERMERIA EN SALUD MENTAL',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=140,codigo=924,nombre='EDI',resumen=None,cursoid=2,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=141,codigo=925,nombre='PRACTICA II',resumen=None,cursoid=2,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=142,codigo=926,nombre='EDUCACION EN SALUD',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=143,codigo=927,nombre='ORG. Y GESTION SERV. SALUD',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=144,codigo=928,nombre='INV. Y PLANIF. EN SALUD',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=145,codigo=929,nombre='INGLES',resumen=None,cursoid=3,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=146,codigo=930,nombre='ENFERM. MATERNO-INF. II',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=147,codigo=931,nombre='ORG. Y GESTION SERV. DE ENFERM.',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=148,codigo=932,nombre='ENFERM. EN EMERG. Y CATASTROFES',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=149,codigo=933,nombre='ASPECTOS ETICOS Y LEGALES DE LA PRAC. PROF',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=150,codigo=934,nombre='EDI II',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=151,codigo=935,nombre='PRACTICA III',resumen=None,cursoid=3,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=152,codigo=400,nombre='CONDICIONES Y MEDIO AMBIENTE DEL TRABAJO',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=153,codigo=401,nombre='SALUD PUBLICA I',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=154,codigo=402,nombre='BIOLOGIA HUMANA',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=155,codigo=403,nombre='FUNDAMENTOS DEL CUIDADO',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=156,codigo=404,nombre='CUIDADOS DE LA SALUD CENTRADOS EN LA COMUNIDAD Y LA FAMILIA',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=157,codigo=405,nombre='PRACTICA I',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    
#ANALISIS DE SISTEMAS
    db.materias.insert(materiaid=158,codigo=500,nombre='ALGEBRA',resumen=None,cursoid=1,catedraid=3, orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=159,codigo=501,nombre='ANALISIS MATEMATICO I',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=160,codigo=502,nombre='INGLES TECNICO I',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=161,codigo=503,nombre='ADM. DE LAS ORGANIZACIONES',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=162,codigo=504,nombre='METODOLOGIA DE LA INVESTIGACION',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=163,codigo=505,nombre='PROGRAMACION I',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=164,codigo=506,nombre='INTROD. SISTEMAS DE INFORMACION',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=165,codigo=507,nombre='ARQUITECTURA DE COMPUTADORES',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=166,codigo=508,nombre='EDI I',resumen=None,cursoid=1,catedraid=3,orden=0,optativa='False',analitico=None,requerida='False')
    db.materias.insert(materiaid=167,codigo=509,nombre='PROBABILIDAD Y ESTADISTICA',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=168,codigo=510,nombre='ANALISIS MATEMATICO II',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=169,codigo=511,nombre='INGLES TECNICO II',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=170,codigo=512,nombre='SISTEMAS DE INFORMACION I',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=171,codigo=513,nombre='PROGRAMACION II',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=172,codigo=514,nombre='SISTEMAS OPERATIVOS',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=173,codigo=515,nombre='BASES DE DATOS',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=174,codigo=516,nombre='EDI II',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=175,codigo=517,nombre='INVESTIGACION OPERATIVA',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=176,codigo=518,nombre='ECONOMIA EMPRESARIAL',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=177,codigo=519,nombre='TELEINFORMATICA',resumen='',cursoid=1,catedraid=3, orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=178,codigo=520,nombre='SISTEMAS DE INFORMACION II',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=179,codigo=521,nombre='PRACTICA PROFESIONAL',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    db.materias.insert(materiaid=180,codigo=522,nombre='EDI III',resumen='',cursoid=1,catedraid=3,orden=0,optativa='False',analitico='',requerida='False')
    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.materias.id>0).select()}

def cargar_horarios():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.horarios.horarioid>0).delete()  

    # Insertamos los horarios correspondientes
    ###################################### PRIMER AÑO ###########################
    db.horarios.insert(horarioid= 1, horaid=1, dia="lunes", comisionid=63,detalle="")
    db.horarios.insert(horarioid= 2, horaid=2, dia="lunes", comisionid=62,detalle="")
    db.horarios.insert(horarioid= 3, horaid=3, dia="lunes", comisionid=60,detalle="")
    db.horarios.insert(horarioid= 4, horaid=4, dia="lunes", comisionid=60,detalle="")
    
    db.horarios.insert(horarioid= 5, horaid=1,dia="martes",comisionid=57,detalle="")
    db.horarios.insert(horarioid= 6, horaid=2,dia="martes",comisionid=57,detalle="")
    db.horarios.insert(horarioid= 7, horaid=3,dia="martes",comisionid=62,detalle="")
    db.horarios.insert(horarioid= 8, horaid=4,dia="martes",comisionid=62,detalle="")
    
    db.horarios.insert(horarioid= 9, horaid=1,dia="miercoles",comisionid=59,detalle="")
    db.horarios.insert(horarioid= 10, horaid=2,dia="miercoles",comisionid=59,detalle="")
    db.horarios.insert(horarioid= 11, horaid=3,dia="miercoles",comisionid=61,detalle="")
    db.horarios.insert(horarioid= 12, horaid=4,dia="miercoles",comisionid=61,detalle="")
    
    db.horarios.insert(horarioid= 13, horaid=1,dia="jueves",comisionid=56,detalle="")
    db.horarios.insert(horarioid= 14, horaid=2,dia="jueves",comisionid=56,detalle="")
    db.horarios.insert(horarioid= 15, horaid=3,dia="jueves",comisionid=60,detalle="")
    db.horarios.insert(horarioid= 16, horaid=4,dia="jueves",comisionid=60,detalle="")
    
    db.horarios.insert(horarioid= 17, horaid=1,dia="viernes",comisionid=58,detalle="")
    db.horarios.insert(horarioid= 18, horaid=2,dia="viernes",comisionid=58,detalle="")
    db.horarios.insert(horarioid= 19, horaid=3,dia="viernes",comisionid=55,detalle="")
    db.horarios.insert(horarioid= 20, horaid=4,dia="viernes",comisionid=55,detalle="")
    
    ###################################### SEGUNDO AÑO ###########################
    db.horarios.insert(horarioid= 21, horaid=1, dia="lunes", comisionid=68,detalle="")
    db.horarios.insert(horarioid= 22, horaid=2, dia="lunes", comisionid=68,detalle="")
    db.horarios.insert(horarioid= 23, horaid=3, dia="lunes", comisionid=71,detalle="")
    db.horarios.insert(horarioid= 24, horaid=4, dia="lunes", comisionid=71,detalle="")
    
    db.horarios.insert(horarioid= 25, horaid=3,dia="martes",comisionid=66,detalle="")
    db.horarios.insert(horarioid= 26, horaid=4,dia="martes",comisionid=66,detalle="")
    
    db.horarios.insert(horarioid= 27, horaid=1,dia="miercoles",comisionid=67,detalle="")
    db.horarios.insert(horarioid= 28, horaid=2,dia="miercoles",comisionid=67,detalle="")
    db.horarios.insert(horarioid= 29, horaid=3,dia="miercoles",comisionid=70,detalle="")
    db.horarios.insert(horarioid= 30, horaid=4,dia="miercoles",comisionid=70,detalle="")
    
    db.horarios.insert(horarioid= 31, horaid=1,dia="jueves",comisionid=68,detalle="")
    db.horarios.insert(horarioid= 32, horaid=2,dia="jueves",comisionid=68,detalle="")
    db.horarios.insert(horarioid= 33, horaid=3,dia="jueves",comisionid=65,detalle="")
    db.horarios.insert(horarioid= 34, horaid=4,dia="jueves",comisionid=65,detalle="")
    
    db.horarios.insert(horarioid= 35, horaid=1,dia="viernes",comisionid=64,detalle="")
    db.horarios.insert(horarioid= 36, horaid=2,dia="viernes",comisionid=64,detalle="")
    db.horarios.insert(horarioid= 37, horaid=3,dia="viernes",comisionid=69,detalle="")
    db.horarios.insert(horarioid= 38, horaid=4,dia="viernes",comisionid=69,detalle="")
    
    #################################### TERCER AÑO #########################
    
    db.horarios.insert(horarioid= 39, horaid=3,dia="martes",comisionid=72,detalle="")
    db.horarios.insert(horarioid= 40, horaid=4,dia="martes",comisionid=72,detalle="")
    
    db.horarios.insert(horarioid= 41, horaid=1,dia="miercoles",comisionid=76,detalle="")
    db.horarios.insert(horarioid= 42, horaid=2,dia="miercoles",comisionid=76,detalle="")
    db.horarios.insert(horarioid= 43, horaid=3,dia="miercoles",comisionid=77,detalle="")
    db.horarios.insert(horarioid= 44, horaid=4,dia="miercoles",comisionid=77,detalle="")
    
    db.horarios.insert(horarioid= 45, horaid=1,dia="jueves",comisionid=74,detalle="")
    db.horarios.insert(horarioid= 46, horaid=2,dia="jueves",comisionid=74,detalle="")
    db.horarios.insert(horarioid= 47, horaid=3,dia="jueves",comisionid=75,detalle="")
    db.horarios.insert(horarioid= 48, horaid=4,dia="jueves",comisionid=75,detalle="")
    
    db.horarios.insert(horarioid= 49, horaid=1,dia="viernes",comisionid=76,detalle="")
    db.horarios.insert(horarioid= 50, horaid=2,dia="viernes",comisionid=76,detalle="")
    db.horarios.insert(horarioid= 51, horaid=3,dia="viernes",comisionid=73,detalle="")
    db.horarios.insert(horarioid= 52, horaid=4,dia="viernes",comisionid=73,detalle="")

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
    db.revistas.insert(revistaid=2, nombre="Suplente")
    
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
   
   db.horas.insert(horaid=1, hora="1",desde="18",hasta="19",nivelid=1)
   db.horas.insert(horaid=2, hora="2",desde="19",hasta="20:10",nivelid=1)
   db.horas.insert(horaid=3, hora="3",desde="20:20",hasta="21",nivelid=1)
   db.horas.insert(horaid=4, hora="4",desde="21",hasta="22:30",nivelid=1)
    
   response.view="generic.html"
   
     # Devuelvo una consulta del contenido de la tabla
   
   return {'filas': db(db.horas.horaid>0).select()}


def cargar_examenes():
    # Antes de insertar borramos los registros de la tabla    
    
    db(db.examenes.examenid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.examenes.insert(examenid=1, materiaid=1,periodoid=24,llamado=1,turno= "Noche",fecha="2013-12-10",hora="19:00",personalid1=8,personalid2=3,personalid3=5)
    db.examenes.insert(examenid=2, materiaid=2,periodoid=24,llamado=1,turno= "Noche",fecha="2013-12-11",hora="19:00",personalid1=8,personalid2=3,personalid3=5)

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
    
def cargar_niveles():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.niveles.nivelid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.niveles.insert(nivelid= 1, descripcion= 'Terciario', ciclo= 2, tipo= "", personalid= "")
    db.niveles.insert(nivelid= 2, descripcion= 'Secundario', ciclo= 2, tipo= "", personalid= "")
                            
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.niveles.nivelid>0).select()}
