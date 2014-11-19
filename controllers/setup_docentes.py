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
    apto="nose",nombramiento="",cuil=1234577,cargoid=1,foto='mariano', user_id=1)
    
    db.personal.insert(personalid=3,E_mail='HectorAmarilla@gmail.com',facebook='Hector Amarilla', nombre="Amarilla Hector",dni=434343,nacimiento="",
    domicilio="Laprida 4567",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=8568899,titulos="ingenieria en sistemas",otorgadospor="Jose Rodriguez",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=8799999,cargoid=2, user_id=2)
    
    db.personal.insert(personalid=4,E_mail='vargasclaudia@gmail.com',facebook='Maria Claudi Vargas', nombre="Vargas Claudia",dni=4545,nacimiento="",
    domicilio="San Juan 1122",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=7899765,titulos="Contaduria",otorgadospor="Juan Repeto",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=7876669,cargoid=2, user_id=5)
    
    db.personal.insert(personalid=5,E_mail='Angelbravo@gmail.com',facebook='Angel Bravo', nombre="Bravo Angel",dni=9897,nacimiento="",
    domicilio="Rivas 1450",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=7899765,titulos="ingenieria en sistemas",otorgadospor="Norberto Gonzalez",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=76969989,cargoid=1, user_id=3)
    
    db.personal.insert(personalid=6, E_mail='Aguihelena@gmail.com',facebook='Aguirre Helena',nombre="Aguirre Elena",dni=57865,nacimiento="",
    domicilio="Sarmiento 1120",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=6888899,titulos="Psicopedagoga",otorgadospor="Norma Villanueva",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=545465456,cargoid=2, user_id=4)
    
    db.personal.insert(personalid=7,E_mail='Medinaluz@gmail.com',facebook='Luz Medina', nombre="Media Luz",dni=754645657,nacimiento="",
    domicilio="Claudia Sifre 1112",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=436777,titulos="Analisis de sistemas",otorgadospor="Angel Bravo",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=9679679,cargoid=1, user_id=6)
    
    db.personal.insert(personalid=8, E_mail='Josegonzalez@gmail.com',facebook='Jose Gonzalez',nombre="Gonzalez Jose",dni=79588,nacimiento="",
    domicilio="Lasalle 456",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=5474868787,titulos="Profesor matematica",otorgadospor="Ruben Olmedo",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=7896969,cargoid=1, user_id=7)
    
    db.personal.insert(personalid=9, E_mail='roselli@gmail.com',facebook='Andrea Roselli',nombre="Andrea Roselli ",dni=545353,nacimiento="",
    domicilio="Melian  567",localidad="gonzalez catan",cp=1759,provincia="Buenos Aires",
    telefono=6576765757,titulos="Profesora de  ingles",otorgadospor="Josefa Rosales",fechaotorgamiento="",
    apto="nose",nombramiento="",cuil=5476476475,cargoid=1, user_id=8)
    db.personal.insert(personalid=10,E_mail='',facebook='',nombre='FLORES',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=11,E_mail='',facebook='',nombre='COLLOCA',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=12,E_mail='',facebook='',nombre='FERNANDEZ',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=13,E_mail='',facebook='',nombre='GUERRERO',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=14,E_mail='',facebook='',nombre='BOTTO',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=15,E_mail='',facebook='',nombre='RODRIGUEZ',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=16,E_mail='',facebook='',nombre='BORRAS',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=17,E_mail='',facebook='',nombre='KLEIMAN',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=18,E_mail='',facebook='',nombre='DIAZ TORRES',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=19,E_mail='',facebook='',nombre='MELGAREJO',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=20,E_mail='',facebook='',nombre='BENITEZ',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=21,E_mail='',facebook='',nombre='PETIT',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=22,E_mail='',facebook='',nombre='YANSEN',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=23,E_mail='',facebook='',nombre='RONDAN',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=24,E_mail='',facebook='',nombre='VERA',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=25,E_mail='',facebook='',nombre='FIELMARIN',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=26,E_mail='',facebook='',nombre='MARTINEZ',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    db.personal.insert(personalid=27,E_mail='',facebook='',nombre='CASTILLO',dni=None,nacimiento=None, domicilio='',localidad='',cp='',provincia='',telefono='',titulos='',otorgadospor='',fechaotorgamiento='',apto='',nombramiento=None,cuil='',foto='',cargoid=2,user_id=None)
    
    db.personal.insert(personalid=28,E_mail='adriana@gmail.com',facebook='Adriana ', nombre="Adriana",dni=6465464,nacimiento="",
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
    licencia=True, detalle="nose que poner aca", id=1)
    
    db.profesores.insert(profesorid= 2, personalid=3, comisionid=2, cargoid=2, revistaid=1, 
    licencia=True, detalle="nose que poner aca", id=1)
    
    db.profesores.insert(profesorid= 3, personalid=4, comisionid=4, cargoid=1, revistaid=1, 
    licencia=True, detalle="nose que poner aca", id=1)
    
    db.profesores.insert(profesorid= 4, personalid=5, comisionid=5, cargoid=1, revistaid=1, 
    licencia=True, detalle="nose que poner aca", id=1)
    
    db.profesores.insert(profesorid= 5, personalid=6, comisionid=6, cargoid=1, revistaid=1, 
    licencia=True, detalle="nose que poner aca", id=1)
    
    db.profesores.insert(profesorid= 6, personalid=7, comisionid=7, cargoid=1, revistaid=1, 
    licencia=True, detalle="nose que poner aca", id=1)
    
    db.profesores.insert(profesorid= 7, personalid=8, comisionid=8, cargoid=1, revistaid=1, 
    licencia=True, detalle="nose que poner aca", id=1)
    
    db.profesores.insert(profesorid= 8, personalid=9, comisionid=9, cargoid=2, revistaid=1, 
    licencia=True, detalle="nose que poner aca", id=1)
    
    db.profesores.insert(profesorid= 9, personalid=10, comisionid=10, cargoid=1, revistaid=1, 
    licencia=True, detalle="nose que poner aca", id=1)
    

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

def cargar_divisiones():
    # Antes de insertar borramos los registros de la tabla
    db(db.divisiones.divisionid>0).delete()
    db.divisiones.insert(divisionid=1,descripcion='1\xc2\xba ',codigo='1A06',cursoid=1,cicloid=5,numero=1,letra='A',turno='N',anio=2014)
    db.divisiones.insert(divisionid=2,descripcion='2\xc2\xb0',codigo='2B06',cursoid=2,cicloid=5,numero=2,letra='B',turno='N',anio=2014)
    db.divisiones.insert(divisionid=3,descripcion='3\xc2\xba',codigo='3C06',cursoid=3,cicloid=5,numero=3,letra='C',turno='N',anio=2014)
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.divisiones.divisionid>0).select()}

def cargar_periodos():
    # Antes de insertar borramos los registros de la tabla
    db(db.periodos.periodoid>0).delete()
    db.periodos.insert(periodoid=1,descripcion='Finales Anteriores',nivelid=1,cicloid=None,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=0,semestre=0,orden=0, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=None,notaminima=None)
    db.periodos.insert(periodoid=2,descripcion='A\xc3\xb1o 2007',nivelid=1,cicloid=None,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=0,semestre=0,orden=1, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=None,notaminima=None)
    db.periodos.insert(periodoid=3,descripcion='A\xc3\xb1o 2008',nivelid=1,cicloid=None,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=0,semestre=0,orden=2, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=None,notaminima=None)
    db.periodos.insert(periodoid=4,descripcion='A\xc3\xb1o 2009',nivelid=1,cicloid=None,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=0,semestre=0,orden=3, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=None,notaminima=None)
    db.periodos.insert(periodoid=5,descripcion='1\xc2\xb0 Cuatrimestre 2010',nivelid=1,cicloid=1,mes=6,anio=2010,trimestre=0,condicion=None,cuatrimestre=1,semestre=0,orden=4, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=6014,notaminima=None)
    db.periodos.insert(periodoid=6,descripcion='2\xc2\xb0 Cuatrimestre 2010',nivelid=1,cicloid=1,mes=10,anio=2010,trimestre=0,condicion=None,cuatrimestre=2,semestre=0,orden=5, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=6014,notaminima=None)
    db.periodos.insert(periodoid=8,descripcion='Ex\xc3\xa1menes Marzo 2010',nivelid=1,cicloid=1,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='',inicio=None,cierre=None,tipo=0,dias=0,secuencia=6012,notaminima=None)
    db.periodos.insert(periodoid=9,descripcion='Ex\xc3\xa1menes Agosto 2010',nivelid=1,cicloid=1,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='',inicio=None,cierre=None,tipo=0,dias=0,secuencia=6013,notaminima=None)
    db.periodos.insert(periodoid=10,descripcion='Ex\xc3\xa1menes Dic/2011',nivelid=1,cicloid=2,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='',inicio=None,cierre=None,tipo=0,dias=0,secuencia=6014,notaminima=None)
    db.periodos.insert(periodoid=11,descripcion='Examenes Marzo/2011',nivelid=1,cicloid=2,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='', inicio=None,cierre=None,tipo=0,dias=0,secuencia=6015,notaminima=None)
    db.periodos.insert(periodoid=12,descripcion='Examenes Agosto 2011',nivelid=1,cicloid=2,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='', inicio=None,cierre=None,tipo=0,dias=0,secuencia=6016,notaminima=None)
    db.periodos.insert(periodoid=14,descripcion='1\xc2\xba Cuatrimestre 2011',nivelid=1,cicloid=2,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=1,semestre=0,orden=0, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=6016,notaminima=None)
    db.periodos.insert(periodoid=15,descripcion='2\xc2\xba Cuatrimestre 2011',nivelid=1,cicloid=2,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=2,semestre=0,orden=0, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=6016,notaminima=None)
    db.periodos.insert(periodoid=18,descripcion='Ex\xc3\xa1menes Dic/2012',nivelid=1,cicloid=3,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='',inicio=None,cierre=None,tipo=0,dias=0,secuencia=6016,notaminima=None)
    db.periodos.insert(periodoid=19,descripcion='Ex\xc3\xa1menes Mar/2012',nivelid=1,cicloid=3,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='',inicio=None,cierre=None,tipo=0,dias=0,secuencia=6017,notaminima=None)
    db.periodos.insert(periodoid=20,descripcion='1\xc2\xba Cuatrimestre 2012',nivelid=1,cicloid=3,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=1,semestre=0,orden=1, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=6017,notaminima=None)
    db.periodos.insert(periodoid=21,descripcion='2\xc2\xaa Cuatrimestre 2012',nivelid=1,cicloid=3,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=2,semestre=0,orden=0, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=6017,notaminima=None)
    db.periodos.insert(periodoid=22,descripcion='A\xc3\xb1o 2013',nivelid=1,cicloid=4,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=0,semestre=0,orden=0, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=6017,notaminima=None)
    db.periodos.insert(periodoid=23,descripcion='Examenes Agosto 2013',nivelid=1,cicloid=4,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='',inicio=None,cierre=None,tipo=0,dias=0,secuencia=6018,notaminima=None)
    db.periodos.insert(periodoid=24,descripcion='Ex\xc3\xa1menes Dic/2013',nivelid=1,cicloid=4,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='',inicio=None,cierre=None,tipo=0,dias=0,secuencia=6019,notaminima=None)
    db.periodos.insert(periodoid=25,descripcion='Ex\xc3\xa1menes Mar/2013',nivelid=1,cicloid=4,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='',inicio=None,cierre=None,tipo=0,dias=0,secuencia=6020,notaminima=None)
    db.periodos.insert(periodoid=26,descripcion='1\xc2\xba Cuatrimestre 2013',nivelid=1,cicloid=4,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=1,semestre=0,orden=1, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=6021,notaminima=None)
    db.periodos.insert(periodoid=27,descripcion='2\xc2\xaa Cuatrimestre 2013',nivelid=1,cicloid=4,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=2,semestre=0,orden=0, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=6021,notaminima=None)
    db.periodos.insert(periodoid=28,descripcion='Ex\xc3\xa1menes Mar/2014',nivelid=1,cicloid=5,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='',inicio=None,cierre=None,tipo=0,dias=0,secuencia=6020,notaminima=None)
    db.periodos.insert(periodoid=29,descripcion='Examenes Ago/2014',nivelid=1,cicloid=5,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='',inicio=None,cierre=None,tipo=0,dias=0,secuencia=6018,notaminima=None)
    db.periodos.insert(periodoid=30,descripcion='Ex\xc3\xa1menes Dic/2014',nivelid=1,cicloid=5,mes=0,anio=0,trimestre=0,condicion='',cuatrimestre=0,semestre=0,orden=0, codigo='',inicio=None,cierre=None,tipo=0,dias=0,secuencia=6019,notaminima=None)
    db.periodos.insert(periodoid=31,descripcion='1\xc2\xba Cuatrimestre 2014',nivelid=1,cicloid=5,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=1,semestre=0,orden=1, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=6021,notaminima=None)
    db.periodos.insert(periodoid=32,descripcion='2\xc2\xaa Cuatrimestre 2014',nivelid=1,cicloid=5,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=2,semestre=0,orden=0, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=6021,notaminima=None)
    db.periodos.insert(periodoid=33,descripcion='A\xc3\xb1o 2014',nivelid=1,cicloid=5,mes=0,anio=0,trimestre=0,condicion=None,cuatrimestre=0,semestre=0,orden=0, codigo=None,inicio=None,cierre=None,tipo=0,dias=0,secuencia=6017,notaminima=None)
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.periodos.periodoid>0).select()}

def cargar_comisiones():
    # Antes de insertar borramos los registros de la tabla
    db(db.comisiones.comisionid>0).delete()
    db.comisiones.insert(comisionid=55,nombre='ALGEBRA',divisionid=1,periodoid=33,materiaid=158,personalid=8,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=56,nombre='ANALISIS MATEMATICO I',divisionid=1,periodoid=33,materiaid=159,personalid=8,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=57,nombre='INGLES TECNICO I',divisionid=1,periodoid=33,materiaid=160,personalid=9,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=58,nombre='ADM. DE LAS ORGANIZACIONES',divisionid=1,periodoid=33,materiaid=161,personalid=4,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=59,nombre='METODOLOGIA DE LA INVESTIGACION',divisionid=1,periodoid=33,materiaid=162,personalid=6,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=60,nombre='PROGRAMACION I',divisionid=1,periodoid=33,materiaid=163,personalid=3,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=61,nombre='INTROD. SISTEMAS DE INFORMACION',divisionid=1,periodoid=33,materiaid=164,personalid=7,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=62,nombre='ARQUITECTURA DE COMPUTADORES',divisionid=1,periodoid=33,materiaid=165,personalid=5,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=63,nombre='EDI I',divisionid=1,periodoid=33,materiaid=166,personalid=5,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=64,nombre='PROBABILIDAD Y ESTADISTICA',divisionid=2,periodoid=33,materiaid=167,personalid=8,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=65,nombre='ANALISIS MATEMATICO II',divisionid=2,periodoid=33,materiaid=168,personalid=8,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=66,nombre='INGLES TECNICO II',divisionid=2,periodoid=33,materiaid=169,personalid=9,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=67,nombre='SISTEMAS DE INFORMACION I',divisionid=2,periodoid=33,materiaid=170,personalid=7,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=68,nombre='PROGRAMACION II',divisionid=2,periodoid=33,materiaid=171,personalid=3,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=69,nombre='SISTEMAS OPERATIVOS',divisionid=2,periodoid=33,materiaid=172,personalid=2,dias_habiles=27,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=70,nombre='BASES DE DATOS',divisionid=2,periodoid=33,materiaid=173,personalid=2,dias_habiles=28,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=71,nombre='EDI II',divisionid=2,periodoid=33,materiaid=174,personalid=5,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=72,nombre='INVESTIGACION OPERATIVA',divisionid=3,periodoid=33,materiaid=175,personalid=7,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=73,nombre='ECONOMIA EMPRESARIAL',divisionid=3,periodoid=33,materiaid=176,personalid=4,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=74,nombre='TELEINFORMATICA',divisionid=3,periodoid=33,materiaid=177,personalid=5,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=75,nombre='SISTEMAS DE INFORMACION II',divisionid=3,periodoid=33,materiaid=178,personalid=5,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=76,nombre='PRACTICA PROFESIONAL',divisionid=3,periodoid=33,materiaid=179,personalid=2,dias_habiles=82,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=77,nombre='EDI III',divisionid=3,periodoid=33,materiaid=180,personalid=6,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=78,nombre='SALUD PUBLICA',divisionid=1,periodoid=33,materiaid=47,personalid=10,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=79,nombre='INFORMATICA',divisionid=1,periodoid=33,materiaid=48,personalid=11,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=80,nombre='BIOLOGIA I',divisionid=1,periodoid=33,materiaid=49,personalid=10,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=81,nombre='FUND. DE LAS CIENCIAS EXACTAS',divisionid=1,periodoid=33,materiaid=50,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=82,nombre='PROCESOS TECNOLOGICOS EN SALUD I',divisionid=1,periodoid=33,materiaid=51,personalid=13,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=83,nombre='PROCESOS TECNOLOGICOS EN SALUD II',divisionid=1,periodoid=33,materiaid=52,personalid=13,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=84,nombre='EDI',divisionid=1,periodoid=33,materiaid=53,personalid=10,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=85,nombre='ESPACIO DE LA PRACTICA',divisionid=1,periodoid=33,materiaid=54,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=86,nombre='ORG. Y GESTION DE SERV. DE SALUD',divisionid=2,periodoid=33,materiaid=55,personalid=14,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=87,nombre='BIOLOGIA II',divisionid=2,periodoid=33,materiaid=56,personalid=15,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=88,nombre='METODOLOGIA DE LA INVESTIGACION',divisionid=2,periodoid=33,materiaid=57,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=89,nombre='SEGURIDAD E HIGIENE',divisionid=2,periodoid=33,materiaid=58,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=90,nombre='EDI II',divisionid=2,periodoid=33,materiaid=59,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=91,nombre='CENTRO Y ACTO QUIRURGICO',divisionid=2,periodoid=33,materiaid=60,personalid=14,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=92,nombre='ATENCION DEL PACIENTE QUIRURGICO Y LA EMERGENCIA',divisionid=2,periodoid=33,materiaid=61,personalid=14,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=93,nombre='ANATOMIA Y TECNICA QUIRURGICA I',divisionid=2,periodoid=33,materiaid=62,personalid=17,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=94,nombre='PRACTICA',divisionid=2,periodoid=33,materiaid=63,personalid=18,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=95,nombre='INV. EN SERV. DE SALUD',divisionid=3,periodoid=33,materiaid=64,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=96,nombre='INGLES',divisionid=3,periodoid=33,materiaid=65,personalid=9,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=97,nombre='BIOETICA',divisionid=3,periodoid=33,materiaid=66,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=98,nombre='ANATOMIA Y TECNICA QUIRURGICA II',divisionid=3,periodoid=33,materiaid=67,personalid=17,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=99,nombre='INT. A LA GESTION DEL CENTRO QUIRURG.',divisionid=3,periodoid=33,materiaid=68,personalid=14,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=100,nombre='EDI III',divisionid=3,periodoid=33,materiaid=69,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=101,nombre='PRACTICA',divisionid=3,periodoid=33,materiaid=70,personalid=18,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=102,nombre='SALUD PUBLICA',divisionid=1,periodoid=33,materiaid=71,personalid=10,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=103,nombre='INFORMATICA',divisionid=1,periodoid=33,materiaid=72,personalid=11,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=104,nombre='BIOLOGIA I',divisionid=1,periodoid=33,materiaid=73,personalid=10,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=105,nombre='FUND. DE LAS CIENCIAS EXACTAS',divisionid=1,periodoid=33,materiaid=74,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=106,nombre='PROCESOS TECNOLOGICOS EN SALUD I',divisionid=1,periodoid=33,materiaid=75,personalid=13,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=107,nombre='PROCESOS TECNOLOGICOS EN SALUD II',divisionid=1,periodoid=33,materiaid=76,personalid=13,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=108,nombre='EDI',divisionid=1,periodoid=33,materiaid=77,personalid=10,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=109,nombre='ESPACIO DE LA PRACTICA',divisionid=1,periodoid=33,materiaid=78,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=110,nombre='ORG. Y GESTION DE SERV. DE SALUD',divisionid=2,periodoid=33,materiaid=79,personalid=14,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=111,nombre='BIOLOGIA II',divisionid=2,periodoid=33,materiaid=80,personalid=15,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=112,nombre='METODOLOGIA DE LA INVESTIGACION',divisionid=2,periodoid=33,materiaid=81,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=113,nombre='SEGURIDAD E HIGIENE',divisionid=2,periodoid=33,materiaid=82,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=114,nombre='EDI II',divisionid=2,periodoid=33,materiaid=83,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=115,nombre='QUIMICA BIOLOGICA',divisionid=2,periodoid=33,materiaid=84,personalid=15,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=116,nombre='ADMISION DE PACIENTES I',divisionid=2,periodoid=33,materiaid=85,personalid=19,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=117,nombre='PROCED. TECNICOS NORMALIZADOS',divisionid=2,periodoid=33,materiaid=86,personalid=20,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=118,nombre='PRACTICA',divisionid=2,periodoid=33,materiaid=87,personalid=21,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=119,nombre='INV. EN SERV. DE SALUD',divisionid=3,periodoid=33,materiaid=88,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=120,nombre='INGLES',divisionid=3,periodoid=33,materiaid=89,personalid=9,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=121,nombre='BIOETICA',divisionid=3,periodoid=33,materiaid=90,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=122,nombre='ADMISION DE PACIENTES II',divisionid=3,periodoid=33,materiaid=91,personalid=19,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=123,nombre='PROC. TECNICOS NORMALIZADOS II',divisionid=3,periodoid=33,materiaid=92,personalid=20,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=124,nombre='CONTROL DE CALIDAD',divisionid=3,periodoid=33,materiaid=93,personalid=19,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=125,nombre='GESTION DE LABORATORIO',divisionid=3,periodoid=33,materiaid=94,personalid=15,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=126,nombre='EDI III',divisionid=3,periodoid=33,materiaid=95,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=127,nombre='PRACTICA',divisionid=3,periodoid=33,materiaid=96,personalid=21,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=128,nombre='SALUD PUBLICA',divisionid=1,periodoid=33,materiaid=97,personalid=10,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=129,nombre='INFORMATICA',divisionid=1,periodoid=33,materiaid=98,personalid=11,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=130,nombre='BIOLOGIA I',divisionid=1,periodoid=33,materiaid=99,personalid=10,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=131,nombre='FUND. DE LAS CIENCIAS EXACTAS',divisionid=1,periodoid=33,materiaid=100,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=132,nombre='PROCESOS TECNOLOGICOS EN SALUD I',divisionid=1,periodoid=33,materiaid=101,personalid=13,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=133,nombre='PROCESOS TECNOLOGICOS EN SALUD II',divisionid=1,periodoid=33,materiaid=102,personalid=13,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=134,nombre='EDI',divisionid=1,periodoid=33,materiaid=103,personalid=10,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=135,nombre='ESPACIO DE LA PRACTICA',divisionid=1,periodoid=33,materiaid=104,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=136,nombre='ORG. Y GESTION DE SERV. DE SALUD',divisionid=2,periodoid=33,materiaid=105,personalid=14,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=137,nombre='BIOLOGIA II',divisionid=2,periodoid=33,materiaid=106,personalid=15,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=138,nombre='METODOLOGIA DE LA INVESTIGACION',divisionid=2,periodoid=33,materiaid=107,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=139,nombre='SEGURIDAD E HIGIENE',divisionid=2,periodoid=33,materiaid=108,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=140,nombre='EDI II',divisionid=2,periodoid=33,materiaid=109,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=141,nombre='FUND. DE ANATOMOFISIOLOGIA',divisionid=2,periodoid=33,materiaid=110,personalid=22,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=142,nombre='TECNICAS RADIOLOGICAS I',divisionid=2,periodoid=33,materiaid=111,personalid=23,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=143,nombre='TECNICAS RADIOLOGICAS II',divisionid=2,periodoid=33,materiaid=112,personalid=14,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=144,nombre='RADIOFISICA I',divisionid=2,periodoid=33,materiaid=113,personalid=14,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=145,nombre='FUNDAMENTOS DE PATOLOGIA',divisionid=2,periodoid=33,materiaid=114,personalid=23,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=146,nombre='PRACTICA',divisionid=2,periodoid=33,materiaid=115,personalid=23,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=147,nombre='INV. EN SERV. DE SALUD',divisionid=3,periodoid=33,materiaid=116,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=148,nombre='INGLES',divisionid=3,periodoid=33,materiaid=117,personalid=9,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=149,nombre='BIOETICA',divisionid=3,periodoid=33,materiaid=118,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=150,nombre='RADIOFISICA II',divisionid=3,periodoid=33,materiaid=119,personalid=14,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=151,nombre='TECNOLOGIAS RADIOLOGICAS III',divisionid=3,periodoid=33,materiaid=120,personalid=22,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=152,nombre='TECNOLOGIAS RADIOLOGICAS IV',divisionid=3,periodoid=33,materiaid=121,personalid=22,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=153,nombre='RADIOTERAPIA',divisionid=3,periodoid=33,materiaid=122,personalid=22,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=154,nombre='EDI III',divisionid=3,periodoid=33,materiaid=123,personalid=12,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=155,nombre='PRACTICA',divisionid=3,periodoid=33,materiaid=124,personalid=23,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=156,nombre='SALUD PUBLICA',divisionid=1,periodoid=33,materiaid=125,personalid=None,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=157,nombre='EST. Y FUNCION DEL CUERPO HUMANO',divisionid=1,periodoid=33,materiaid=126,personalid=15,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=158,nombre='BIOFISICA Y BIOQUIMICA',divisionid=1,periodoid=33,materiaid=127,personalid=15,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=159,nombre='MICROBIOLOGIA Y PARASITOLOGIA',divisionid=1,periodoid=33,materiaid=128,personalid=24,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=160,nombre='FUNDAMENTOS DE NUTRICION',divisionid=1,periodoid=33,materiaid=129,personalid=None,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=161,nombre='ENFERM. FUND. PRACT. Y TENDENCIAS',divisionid=1,periodoid=33,materiaid=130,personalid=25,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=162,nombre='ENFERMERIA MATERNO INFANTIL I',divisionid=1,periodoid=33,materiaid=131,personalid=24,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=163,nombre='FARMACOLOGIA EN ENFERMERIA',divisionid=1,periodoid=33,materiaid=132,personalid=15,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=164,nombre='PRACTICA I',divisionid=1,periodoid=33,materiaid=133,personalid=24,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=165,nombre='INT. A LA INVESTIGACION EN SALUD',divisionid=2,periodoid=33,materiaid=134,personalid=25,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=166,nombre='EPIDEMIOLOGIA Y ESTADISTICA EN SALUD',divisionid=2,periodoid=33,materiaid=135,personalid=25,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=167,nombre='INFORMATICA',divisionid=2,periodoid=33,materiaid=136,personalid=11,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=168,nombre='ENFERMERIA DEL ADULTO Y EL ANCIANO',divisionid=2,periodoid=33,materiaid=137,personalid=25,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=169,nombre='DIETETICA EN ENFERMERIA',divisionid=2,periodoid=33,materiaid=138,personalid=None,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=170,nombre='ENFERMERIA EN SALUD MENTAL',divisionid=2,periodoid=33,materiaid=139,personalid=25,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=171,nombre='EDI',divisionid=2,periodoid=33,materiaid=140,personalid=24,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=172,nombre='PRACTICA II',divisionid=2,periodoid=33,materiaid=141,personalid=24,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=173,nombre='EDUCACION EN SALUD',divisionid=3,periodoid=33,materiaid=142,personalid=26,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=174,nombre='ORG. Y GESTION SERV. SALUD',divisionid=3,periodoid=33,materiaid=143,personalid=25,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=175,nombre='INV. Y PLANIF. EN SALUD',divisionid=3,periodoid=33,materiaid=144,personalid=25,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=176,nombre='INGLES',divisionid=3,periodoid=33,materiaid=145,personalid=9,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=177,nombre='ENFERM. MATERNO-INF. II',divisionid=3,periodoid=33,materiaid=146,personalid=24,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=178,nombre='ORG. Y GESTION SERV. DE ENFERM.',divisionid=3,periodoid=33,materiaid=147,personalid=25,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=179,nombre='ENFERM. EN EMERG. Y CATASTROFES',divisionid=3,periodoid=33,materiaid=148,personalid=24,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=180,nombre='ASPECTOS ETICOS Y LEGALES DE LA PRAC. PROF',divisionid=3,periodoid=33,materiaid=149,personalid=25,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=181,nombre='EDI II',divisionid=3,periodoid=33,materiaid=150,personalid=24,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=182,nombre='PRACTICA III',divisionid=3,periodoid=33,materiaid=151,personalid=24,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=183,nombre='CONDICIONES Y MEDIO AMBIENTE DEL TRABAJO',divisionid=1,periodoid=33,materiaid=152,personalid=24,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=184,nombre='SALUD PUBLICA I',divisionid=1,periodoid=33,materiaid=153,personalid=27,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=185,nombre='BIOLOGIA HUMANA',divisionid=1,periodoid=33,materiaid=154,personalid=15,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=186,nombre='FUNDAMENTOS DEL CUIDADO',divisionid=1,periodoid=33,materiaid=155,personalid=25,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=187,nombre='CUIDADOS DE LA SALUD CENTRADOS EN LA COMUNIDAD Y LA FAMILIA',divisionid=1,periodoid=33,materiaid=156, personalid=25,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)
    db.comisiones.insert(comisionid=188,nombre='PRACTICA I',divisionid=1,periodoid=33,materiaid=157,personalid=24,faltas1r=None,faltas2r=None,faltaslibre=None,faltasrecursa=None)

    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.comisiones.comisionid>0).select()}
def cargar_condiciones():
    # Antes de insertar borramos los registros de la tabla
    db(db.condiciones.condicionid>0).delete()

    db.condiciones.insert(condicionid= 1, detalle="")
    db.condiciones.insert(condicionid= 2, detalle="Regular")
    db.condiciones.insert(condicionid= 3, detalle="Libre")

    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.condiciones.condicionid>0).select()}

def cargar_inscripciones_comision():
    # Antes de insertar borramos los registros de la tabla
    db(db.inscripcionescomision.id>0).delete()
    #COMISIONES 3ER AÑO
    db.inscripcionescomision.insert(inscripcionid=1, alumnoid=1, comisionid=72, alta='2014-03-01',condicion=2) # INVESTIGACION OPERATIVA
    db.inscripcionescomision.insert(inscripcionid=2, alumnoid=2, comisionid=72, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=3, alumnoid=3, comisionid=72, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=4, alumnoid=4, comisionid=72, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=5, alumnoid=5, comisionid=72, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=6, alumnoid=6, comisionid=72, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=7, alumnoid=7, comisionid=72, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=8, alumnoid=8, comisionid=72, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=9, alumnoid=1, comisionid=73, alta='2014-03-01',condicion=2) # ECONOMIA EMPRESARIAL
    db.inscripcionescomision.insert(inscripcionid=10, alumnoid=2, comisionid=73, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=11, alumnoid=3, comisionid=73, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=12, alumnoid=4, comisionid=73, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=13, alumnoid=5, comisionid=73, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=14, alumnoid=6, comisionid=73, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=15, alumnoid=7, comisionid=73, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=16, alumnoid=8, comisionid=73, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=17, alumnoid=1, comisionid=74, alta='2014-03-01',condicion=2) # TELEINFORMATICA
    db.inscripcionescomision.insert(inscripcionid=18, alumnoid=3, comisionid=74, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=19, alumnoid=5, comisionid=74, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=20, alumnoid=6, comisionid=74, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=21, alumnoid=7, comisionid=74, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=22, alumnoid=8, comisionid=74, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=23, alumnoid=1, comisionid=75, alta='2014-03-01',condicion=2) # SISTEMAS II
    db.inscripcionescomision.insert(inscripcionid=24, alumnoid=2, comisionid=75, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=25, alumnoid=3, comisionid=75, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=26, alumnoid=4, comisionid=75, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=27, alumnoid=5, comisionid=75, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=28, alumnoid=6, comisionid=75, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=29, alumnoid=7, comisionid=75, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=30, alumnoid=8, comisionid=75, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=31, alumnoid=1, comisionid=76, alta='2014-03-01',condicion=2) # PRACTICA PROF
    db.inscripcionescomision.insert(inscripcionid=32, alumnoid=3, comisionid=76, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=33, alumnoid=5, comisionid=76, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=34, alumnoid=6, comisionid=76, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=35, alumnoid=7, comisionid=76, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=36, alumnoid=8, comisionid=76, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=37, alumnoid=9, comisionid=76, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=38, alumnoid=10, comisionid=76, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=39, alumnoid=11, comisionid=76, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=40, alumnoid=1, comisionid=77, alta='2014-03-01',condicion=2) # EDI III
    db.inscripcionescomision.insert(inscripcionid=41, alumnoid=2, comisionid=77, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=42, alumnoid=3, comisionid=77, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=43, alumnoid=4, comisionid=77, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=44, alumnoid=5, comisionid=77, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=45, alumnoid=6, comisionid=77, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=46, alumnoid=7, comisionid=77, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=47, alumnoid=8, comisionid=77, alta='2014-03-01',condicion=2)

    #COMISIONES 2DO AÑO
    db.inscripcionescomision.insert(inscripcionid=48, alumnoid=12, comisionid=64, alta='2014-03-01',condicion=2) # 64 PROBABILIDAD Y ESTADISTICA
    db.inscripcionescomision.insert(inscripcionid=49, alumnoid=13, comisionid=64, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=50, alumnoid=14, comisionid=64, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=51, alumnoid=15, comisionid=64, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=52, alumnoid=16, comisionid=64, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=53, alumnoid=17, comisionid=64, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=54, alumnoid=18, comisionid=64, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=55, alumnoid=19, comisionid=64, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=56, alumnoid=12, comisionid=65, alta='2014-03-01',condicion=2) # 65 ANALISIS MATEMATICO II
    db.inscripcionescomision.insert(inscripcionid=57, alumnoid=13, comisionid=65, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=58, alumnoid=14, comisionid=65, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=59, alumnoid=15, comisionid=65, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=60, alumnoid=16, comisionid=65, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=61, alumnoid=17, comisionid=65, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=62, alumnoid=18, comisionid=65, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=63, alumnoid=19, comisionid=65, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=64, alumnoid=12, comisionid=66, alta='2014-03-01',condicion=2) # 66 INGLES TECNICO II
    db.inscripcionescomision.insert(inscripcionid=65, alumnoid=13, comisionid=66, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=66, alumnoid=14, comisionid=66, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=67, alumnoid=15, comisionid=66, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=68, alumnoid=16, comisionid=66, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=69, alumnoid=17, comisionid=66, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=70, alumnoid=18, comisionid=66, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=71, alumnoid=19, comisionid=66, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=72, alumnoid=12, comisionid=67, alta='2014-03-01',condicion=2) # 67 SISTEMAS DE INFORMACION I
    db.inscripcionescomision.insert(inscripcionid=73, alumnoid=13, comisionid=67, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=74, alumnoid=14, comisionid=67, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=75, alumnoid=15, comisionid=67, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=76, alumnoid=16, comisionid=67, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=77, alumnoid=17, comisionid=67, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=78, alumnoid=18, comisionid=67, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=79, alumnoid=19, comisionid=67, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=80, alumnoid=12, comisionid=68, alta='2014-03-01',condicion=2) # 68 PROGRAMACION II
    db.inscripcionescomision.insert(inscripcionid=81, alumnoid=13, comisionid=68, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=82, alumnoid=14, comisionid=68, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=83, alumnoid=15, comisionid=68, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=84, alumnoid=16, comisionid=68, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=85, alumnoid=17, comisionid=68, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=86, alumnoid=18, comisionid=68, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=87, alumnoid=19, comisionid=68, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=88, alumnoid=12, comisionid=69, alta='2014-03-01',condicion=2) # 69 SISTEMAS OPERATIVOS
    db.inscripcionescomision.insert(inscripcionid=89, alumnoid=13, comisionid=69, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=90, alumnoid=14, comisionid=69, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=91, alumnoid=15, comisionid=69, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=92, alumnoid=16, comisionid=69, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=93, alumnoid=17, comisionid=69, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=94, alumnoid=18, comisionid=69, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=95, alumnoid=19, comisionid=69, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=112, alumnoid=1, comisionid=69, alta='2014-03-01',condicion=3)
    db.inscripcionescomision.insert(inscripcionid=96, alumnoid=12, comisionid=70, alta='2014-03-01',condicion=2) # 70 BASES DE DATOS
    db.inscripcionescomision.insert(inscripcionid=97, alumnoid=13, comisionid=70, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=98, alumnoid=14, comisionid=70, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=99, alumnoid=15, comisionid=70, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=100, alumnoid=16, comisionid=70, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=101, alumnoid=17, comisionid=70, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=102, alumnoid=18, comisionid=70, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=103, alumnoid=19, comisionid=70, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=104, alumnoid=12, comisionid=71, alta='2014-03-01',condicion=2) # 71 EDI II
    db.inscripcionescomision.insert(inscripcionid=105, alumnoid=13, comisionid=71, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=106, alumnoid=14, comisionid=71, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=107, alumnoid=15, comisionid=71, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=108, alumnoid=16, comisionid=71, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=109, alumnoid=17, comisionid=71, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=110, alumnoid=18, comisionid=71, alta='2014-03-01',condicion=2)
    db.inscripcionescomision.insert(inscripcionid=111, alumnoid=19, comisionid=71, alta='2014-03-01',condicion=2)
    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.inscripcionescomision.id>0).select()}

def cargar_inasistencias():
    # Antes de insertar borramos los registros de la tabla
    db(db.inasistencias.inasistenciaid>0).delete()

    db.inasistencias.insert(inasistenciaid=1, descripcion="Media Falta", cantidad=0.5)
    db.inasistencias.insert(inasistenciaid=2, descripcion="Tarde", cantidad=0.5)
    db.inasistencias.insert(inasistenciaid=3, descripcion="Retiro anticipado", cantidad=0.5)
    db.inasistencias.insert(inasistenciaid=4, descripcion="Ausente", cantidad=1)
    db.inasistencias.insert(inasistenciaid=5, descripcion="Presente", cantidad=0)
    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.inasistencias.inasistenciaid>0).select()}

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
    #FALTAS A SISTEMAS OPERATIVOS 2014
    db.faltas.insert(faltaid=1,alumnoid=12,comisionid=69,inasistenciaid=5,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=2,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=3,alumnoid=14,comisionid=69,inasistenciaid=5,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=4,alumnoid=15,comisionid=69,inasistenciaid=4,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=5,alumnoid=16,comisionid=69,inasistenciaid=4,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=6,alumnoid=17,comisionid=69,inasistenciaid=5,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=7,alumnoid=18,comisionid=69,inasistenciaid=5,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=8,alumnoid=19,comisionid=69,inasistenciaid=5,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=9,alumnoid=2, comisionid=69,inasistenciaid=4,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=10,alumnoid=4,comisionid=69,inasistenciaid=4,fecha="2014-03-27",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=11,alumnoid=12,comisionid=69,inasistenciaid=5,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=12,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=13,alumnoid=14,comisionid=69,inasistenciaid=4,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=14,alumnoid=15,comisionid=69,inasistenciaid=4,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=15,alumnoid=16,comisionid=69,inasistenciaid=5,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=16,alumnoid=17,comisionid=69,inasistenciaid=5,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=17,alumnoid=18,comisionid=69,inasistenciaid=4,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=18,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=19,alumnoid=2, comisionid=69,inasistenciaid=5,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=20,alumnoid=4, comisionid=69,inasistenciaid=5,fecha="2014-04-03",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=21,alumnoid=12,comisionid=69,inasistenciaid=4,fecha="2014-04-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=22,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-04-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=23,alumnoid=14,comisionid=69,inasistenciaid=4,fecha="2014-04-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=24,alumnoid=15,comisionid=69,inasistenciaid=4,fecha="2014-04-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=25,alumnoid=16,comisionid=69,inasistenciaid=4,fecha="2014-04-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=26,alumnoid=17,comisionid=69,inasistenciaid=4,fecha="2014-04-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=27,alumnoid=18,comisionid=69,inasistenciaid=4,fecha="2014-04-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=28,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-04-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=29,alumnoid=2, comisionid=69,inasistenciaid=4,fecha="2014-04-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=30,alumnoid=4, comisionid=69,inasistenciaid=4,fecha="2014-04-10",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=31,alumnoid=12,comisionid=69,inasistenciaid=5,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=32,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=33,alumnoid=14,comisionid=69,inasistenciaid=5,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=34,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=35,alumnoid=16,comisionid=69,inasistenciaid=4,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=36,alumnoid=17,comisionid=69,inasistenciaid=5,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=37,alumnoid=18,comisionid=69,inasistenciaid=4,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=38,alumnoid=19,comisionid=69,inasistenciaid=5,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=39,alumnoid=2, comisionid=69,inasistenciaid=4,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=40,alumnoid=4, comisionid=69,inasistenciaid=5,fecha="2014-04-24",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=41,alumnoid=12,comisionid=69,inasistenciaid=4,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=42,alumnoid=13,comisionid=69,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=43,alumnoid=14,comisionid=69,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=44,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=45,alumnoid=16,comisionid=69,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=46,alumnoid=17,comisionid=69,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=47,alumnoid=18,comisionid=69,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=48,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=49,alumnoid=2, comisionid=69,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=50,alumnoid=4, comisionid=69,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=51,alumnoid=12,comisionid=69,inasistenciaid=5,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=52,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=53,alumnoid=14,comisionid=69,inasistenciaid=4,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=54,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=55,alumnoid=16,comisionid=69,inasistenciaid=4,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=56,alumnoid=17,comisionid=69,inasistenciaid=5,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=57,alumnoid=18,comisionid=69,inasistenciaid=4,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=58,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=59,alumnoid=2, comisionid=69,inasistenciaid=5,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=60,alumnoid=4, comisionid=69,inasistenciaid=4,fecha="2014-05-15",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=61,alumnoid=12,comisionid=69,inasistenciaid=4,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=62,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=63,alumnoid=14,comisionid=69,inasistenciaid=5,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=64,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=65,alumnoid=16,comisionid=69,inasistenciaid=4,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=66,alumnoid=17,comisionid=69,inasistenciaid=5,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=67,alumnoid=18,comisionid=69,inasistenciaid=4,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=68,alumnoid=19,comisionid=69,inasistenciaid=5,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=69,alumnoid=2, comisionid=69,inasistenciaid=4,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=70,alumnoid=4, comisionid=69,inasistenciaid=4,fecha="2014-05-22",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=71,alumnoid=12,comisionid=69,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=72,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=73,alumnoid=14,comisionid=69,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=74,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=75,alumnoid=16,comisionid=69,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=76,alumnoid=17,comisionid=69,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=77,alumnoid=18,comisionid=69,inasistenciaid=4,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=78,alumnoid=19,comisionid=69,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=79,alumnoid=2, comisionid=69,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=80,alumnoid=4, comisionid=69,inasistenciaid=4,fecha="2014-05-29",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=81,alumnoid=12,comisionid=69,inasistenciaid=4,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=82,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=83,alumnoid=14,comisionid=69,inasistenciaid=4,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=84,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=85,alumnoid=16,comisionid=69,inasistenciaid=4,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=86,alumnoid=17,comisionid=69,inasistenciaid=4,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=87,alumnoid=18,comisionid=69,inasistenciaid=5,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=88,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=89,alumnoid=2, comisionid=69,inasistenciaid=5,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=90,alumnoid=4, comisionid=69,inasistenciaid=4,fecha="2014-06-05",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=91,alumnoid=12,comisionid=69,inasistenciaid=5,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=92,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=93,alumnoid=14,comisionid=69,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=94,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=95,alumnoid=16,comisionid=69,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=96,alumnoid=17,comisionid=69,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=97,alumnoid=18,comisionid=69,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=98,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=99,alumnoid=2, comisionid=69,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=100,alumnoid=4,comisionid=69,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=101,alumnoid=12,comisionid=69,inasistenciaid=5,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=102,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=103,alumnoid=14,comisionid=69,inasistenciaid=4,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=104,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=105,alumnoid=16,comisionid=69,inasistenciaid=5,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=106,alumnoid=17,comisionid=69,inasistenciaid=4,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=107,alumnoid=18,comisionid=69,inasistenciaid=5,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=108,alumnoid=19,comisionid=69,inasistenciaid=5,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=109,alumnoid=2, comisionid=69,inasistenciaid=5,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=110,alumnoid=4,comisionid=69,inasistenciaid=4,fecha="2014-06-19",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=111,alumnoid=12,comisionid=69,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=112,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=113,alumnoid=14,comisionid=69,inasistenciaid=5,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=114,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=115,alumnoid=16,comisionid=69,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=116,alumnoid=17,comisionid=69,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=117,alumnoid=18,comisionid=69,inasistenciaid=5,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=118,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=119,alumnoid=2, comisionid=69,inasistenciaid=5,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=120,alumnoid=4,comisionid=69,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=121,alumnoid=12,comisionid=69,inasistenciaid=4,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=122,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=123,alumnoid=14,comisionid=69,inasistenciaid=4,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=124,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=125,alumnoid=16,comisionid=69,inasistenciaid=5,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=126,alumnoid=17,comisionid=69,inasistenciaid=5,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=127,alumnoid=18,comisionid=69,inasistenciaid=5,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=128,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=129,alumnoid=2, comisionid=69,inasistenciaid=5,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=130,alumnoid=4,comisionid=69,inasistenciaid=4,fecha="2014-07-03",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=131,alumnoid=12,comisionid=69,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=132,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=133,alumnoid=14,comisionid=69,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=134,alumnoid=15,comisionid=69,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=135,alumnoid=16,comisionid=69,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=136,alumnoid=17,comisionid=69,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=137,alumnoid=18,comisionid=69,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=138,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=139,alumnoid=2, comisionid=69,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=140,alumnoid=4,comisionid=69,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=141,alumnoid=12,comisionid=69,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=142,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=143,alumnoid=14,comisionid=69,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=144,alumnoid=15,comisionid=69,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=145,alumnoid=16,comisionid=69,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=146,alumnoid=17,comisionid=69,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=147,alumnoid=18,comisionid=69,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=148,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=149,alumnoid=2, comisionid=69,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=150,alumnoid=4,comisionid=69,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=151,alumnoid=12,comisionid=69,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=152,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=153,alumnoid=14,comisionid=69,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=154,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=155,alumnoid=16,comisionid=69,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=156,alumnoid=17,comisionid=69,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=157,alumnoid=18,comisionid=69,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=158,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=159,alumnoid=2, comisionid=69,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=160,alumnoid=4,comisionid=69,inasistenciaid=4,fecha="2014-08-21",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=161,alumnoid=12,comisionid=69,inasistenciaid=5,fecha="2014-08-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=162,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-08-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=163,alumnoid=14,comisionid=69,inasistenciaid=4,fecha="2014-08-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=164,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-08-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=165,alumnoid=16,comisionid=69,inasistenciaid=4,fecha="2014-08-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=166,alumnoid=17,comisionid=69,inasistenciaid=5,fecha="2014-08-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=167,alumnoid=18,comisionid=69,inasistenciaid=4,fecha="2014-08-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=168,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-08-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=169,alumnoid=2, comisionid=69,inasistenciaid=5,fecha="2014-08-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=170,alumnoid=4,comisionid=69,inasistenciaid=4,fecha="2014-08-28",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=171,alumnoid=12,comisionid=69,inasistenciaid=5,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=172,alumnoid=13,comisionid=69,inasistenciaid=4,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=173,alumnoid=14,comisionid=69,inasistenciaid=4,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=174,alumnoid=15,comisionid=69,inasistenciaid=5,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=175,alumnoid=16,comisionid=69,inasistenciaid=4,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=176,alumnoid=17,comisionid=69,inasistenciaid=5,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=177,alumnoid=18,comisionid=69,inasistenciaid=4,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=178,alumnoid=19,comisionid=69,inasistenciaid=4,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=179,alumnoid=2, comisionid=69,inasistenciaid=5,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=180,alumnoid=4,comisionid=69,inasistenciaid=4,fecha="2014-09-04",cantidad=1,detalle="")
    
    #FALTAS A BASES DE DATOS 2014
    db.faltas.insert(faltaid=181,alumnoid=12,comisionid=70,inasistenciaid=5,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=182,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=183,alumnoid=14,comisionid=70,inasistenciaid=5,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=184,alumnoid=15,comisionid=70,inasistenciaid=4,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=185,alumnoid=16,comisionid=70,inasistenciaid=5,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=186,alumnoid=17,comisionid=70,inasistenciaid=5,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=187,alumnoid=18,comisionid=70,inasistenciaid=5,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=188,alumnoid=19,comisionid=70,inasistenciaid=5,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=189,alumnoid=2, comisionid=70,inasistenciaid=4,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=190,alumnoid=4,comisionid=70,inasistenciaid=4,fecha="2014-03-26",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=191,alumnoid=12,comisionid=70,inasistenciaid=5,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=192,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=193,alumnoid=14,comisionid=70,inasistenciaid=4,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=194,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=195,alumnoid=16,comisionid=70,inasistenciaid=5,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=196,alumnoid=17,comisionid=70,inasistenciaid=5,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=197,alumnoid=18,comisionid=70,inasistenciaid=4,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=198,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=199,alumnoid=2, comisionid=70,inasistenciaid=5,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=200,alumnoid=4, comisionid=70,inasistenciaid=4,fecha="2014-04-09",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=201,alumnoid=12,comisionid=70,inasistenciaid=5,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=202,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=203,alumnoid=14,comisionid=70,inasistenciaid=4,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=204,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=205,alumnoid=16,comisionid=70,inasistenciaid=5,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=206,alumnoid=17,comisionid=70,inasistenciaid=4,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=207,alumnoid=18,comisionid=70,inasistenciaid=5,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=208,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=209,alumnoid=2, comisionid=70,inasistenciaid=5,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=210,alumnoid=4, comisionid=70,inasistenciaid=4,fecha="2014-04-16",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=211,alumnoid=12,comisionid=70,inasistenciaid=4,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=212,alumnoid=13,comisionid=70,inasistenciaid=5,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=213,alumnoid=14,comisionid=70,inasistenciaid=4,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=214,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=215,alumnoid=16,comisionid=70,inasistenciaid=5,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=216,alumnoid=17,comisionid=70,inasistenciaid=4,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=217,alumnoid=18,comisionid=70,inasistenciaid=5,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=218,alumnoid=19,comisionid=70,inasistenciaid=5,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=219,alumnoid=2, comisionid=70,inasistenciaid=5,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=220,alumnoid=4, comisionid=70,inasistenciaid=4,fecha="2014-04-30",cantidad=1,detalle="")
   
    db.faltas.insert(faltaid=221,alumnoid=12,comisionid=70,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=222,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=223,alumnoid=14,comisionid=70,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=224,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=225,alumnoid=16,comisionid=70,inasistenciaid=4,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=226,alumnoid=17,comisionid=70,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=227,alumnoid=18,comisionid=70,inasistenciaid=4,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=228,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=229,alumnoid=2, comisionid=70,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=230,alumnoid=4, comisionid=70,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")

    db.faltas.insert(faltaid=231,alumnoid=12,comisionid=70,inasistenciaid=4,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=232,alumnoid=13,comisionid=70,inasistenciaid=5,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=233,alumnoid=14,comisionid=70,inasistenciaid=5,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=234,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=235,alumnoid=16,comisionid=70,inasistenciaid=4,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=236,alumnoid=17,comisionid=70,inasistenciaid=5,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=237,alumnoid=18,comisionid=70,inasistenciaid=4,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=238,alumnoid=19,comisionid=70,inasistenciaid=5,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=239,alumnoid=2, comisionid=70,inasistenciaid=5,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=240,alumnoid=4, comisionid=70,inasistenciaid=4,fecha="2014-05-14",cantidad=1,detalle="")
   
    db.faltas.insert(faltaid=241,alumnoid=12,comisionid=70,inasistenciaid=4,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=242,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=243,alumnoid=14,comisionid=70,inasistenciaid=4,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=244,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=245,alumnoid=16,comisionid=70,inasistenciaid=4,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=246,alumnoid=17,comisionid=70,inasistenciaid=5,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=247,alumnoid=18,comisionid=70,inasistenciaid=4,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=248,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=249,alumnoid=2, comisionid=70,inasistenciaid=5,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=250,alumnoid=4, comisionid=70,inasistenciaid=4,fecha="2014-05-21",cantidad=1,detalle="")
   
    db.faltas.insert(faltaid=251,alumnoid=12,comisionid=70,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=252,alumnoid=13,comisionid=70,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=253,alumnoid=14,comisionid=70,inasistenciaid=4,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=254,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=255,alumnoid=16,comisionid=70,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=256,alumnoid=17,comisionid=70,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=257,alumnoid=18,comisionid=70,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=258,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=259,alumnoid=2, comisionid=70,inasistenciaid=4,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=260,alumnoid=4, comisionid=70,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
 
    db.faltas.insert(faltaid=261,alumnoid=12,comisionid=70,inasistenciaid=5,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=262,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=263,alumnoid=14,comisionid=70,inasistenciaid=5,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=264,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=265,alumnoid=16,comisionid=70,inasistenciaid=5,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=266,alumnoid=17,comisionid=70,inasistenciaid=4,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=267,alumnoid=18,comisionid=70,inasistenciaid=5,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=268,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=269,alumnoid=2, comisionid=70,inasistenciaid=5,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=270,alumnoid=4, comisionid=70,inasistenciaid=4,fecha="2014-06-04",cantidad=1,detalle="")
  
    db.faltas.insert(faltaid=271,alumnoid=12,comisionid=70,inasistenciaid=4,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=272,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=273,alumnoid=14,comisionid=70,inasistenciaid=4,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=274,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=275,alumnoid=16,comisionid=70,inasistenciaid=5,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=276,alumnoid=17,comisionid=70,inasistenciaid=4,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=277,alumnoid=18,comisionid=70,inasistenciaid=5,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=278,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=279,alumnoid=2, comisionid=70,inasistenciaid=5,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=280,alumnoid=4,comisionid=70,inasistenciaid=4,fecha="2014-06-11",cantidad=1,detalle="")
  
    db.faltas.insert(faltaid=281,alumnoid=12,comisionid=70,inasistenciaid=5,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=282,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=283,alumnoid=14,comisionid=70,inasistenciaid=4,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=284,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=285,alumnoid=16,comisionid=70,inasistenciaid=5,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=286,alumnoid=17,comisionid=70,inasistenciaid=4,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=287,alumnoid=18,comisionid=70,inasistenciaid=4,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=288,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=289,alumnoid=2, comisionid=70,inasistenciaid=4,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=290,alumnoid=4,comisionid=70,inasistenciaid=4,fecha="2014-06-18",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=291,alumnoid=12,comisionid=70,inasistenciaid=4,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=292,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=293,alumnoid=14,comisionid=70,inasistenciaid=4,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=294,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=295,alumnoid=16,comisionid=70,inasistenciaid=4,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=296,alumnoid=17,comisionid=70,inasistenciaid=5,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=297,alumnoid=18,comisionid=70,inasistenciaid=4,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=298,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=299,alumnoid=2, comisionid=70,inasistenciaid=5,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=300,alumnoid=4,comisionid=70,inasistenciaid=4,fecha="2014-07-02",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=301,alumnoid=12,comisionid=70,inasistenciaid=4,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=302,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=303,alumnoid=14,comisionid=70,inasistenciaid=4,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=304,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=305,alumnoid=16,comisionid=70,inasistenciaid=5,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=306,alumnoid=17,comisionid=70,inasistenciaid=5,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=307,alumnoid=18,comisionid=70,inasistenciaid=5,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=308,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=309,alumnoid=2, comisionid=70,inasistenciaid=5,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=310,alumnoid=4,comisionid=70,inasistenciaid=4,fecha="2014-07-16",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=311,alumnoid=12,comisionid=70,inasistenciaid=5,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=312,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=313,alumnoid=14,comisionid=70,inasistenciaid=4,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=314,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=315,alumnoid=16,comisionid=70,inasistenciaid=4,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=316,alumnoid=17,comisionid=70,inasistenciaid=5,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=317,alumnoid=18,comisionid=70,inasistenciaid=5,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=318,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=319,alumnoid=2, comisionid=70,inasistenciaid=4,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=320,alumnoid=4,comisionid=70,inasistenciaid=4,fecha="2014-08-20",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=321,alumnoid=12,comisionid=70,inasistenciaid=5,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=322,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=323,alumnoid=14,comisionid=70,inasistenciaid=4,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=324,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=325,alumnoid=16,comisionid=70,inasistenciaid=5,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=326,alumnoid=17,comisionid=70,inasistenciaid=5,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=327,alumnoid=18,comisionid=70,inasistenciaid=4,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=328,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=329,alumnoid=2, comisionid=70,inasistenciaid=5,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=330,alumnoid=4,comisionid=70,inasistenciaid=4,fecha="2014-08-27",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=331,alumnoid=12,comisionid=70,inasistenciaid=5,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=332,alumnoid=13,comisionid=70,inasistenciaid=4,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=333,alumnoid=14,comisionid=70,inasistenciaid=4,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=334,alumnoid=15,comisionid=70,inasistenciaid=5,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=335,alumnoid=16,comisionid=70,inasistenciaid=4,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=336,alumnoid=17,comisionid=70,inasistenciaid=5,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=337,alumnoid=18,comisionid=70,inasistenciaid=4,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=338,alumnoid=19,comisionid=70,inasistenciaid=4,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=339,alumnoid=2, comisionid=70,inasistenciaid=5,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=340,alumnoid=4,comisionid=70,inasistenciaid=4,fecha="2014-09-03",cantidad=1,detalle="")

    #FALTAS PRACTICA PROFESIONAL 2014   
    db.faltas.insert(faltaid=341,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=342,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=343,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=344,alumnoid=6,comisionid=76,inasistenciaid=4,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=345,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=346,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=347,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=348,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-03-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=349,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-03-26",cantidad=1,detalle="")

    db.faltas.insert(faltaid=350,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=351,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=352,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=353,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=354,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=355,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=356,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=357,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-03-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=358,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-03-27",cantidad=1,detalle="")

    db.faltas.insert(faltaid=359,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-03-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=360,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-03-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=361,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-03-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=362,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-03-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=363,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-03-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=364,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-03-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=365,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-03-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=366,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-03-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=367,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-03-28",cantidad=1,detalle="")

    db.faltas.insert(faltaid=377,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=378,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=379,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=380,alumnoid=6,comisionid=76,inasistenciaid=4,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=381,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=382,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=383,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=384,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-04-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=385,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-04-03",cantidad=1,detalle="")

    db.faltas.insert(faltaid=386,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-04-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=387,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-04-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=388,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-04-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=389,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-04-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=390,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-04-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=391,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-04-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=392,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-04-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=393,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-04-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=394,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-04-04",cantidad=1,detalle="")

    db.faltas.insert(faltaid=395,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=396,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=397,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=398,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=399,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=400,alumnoid=8,comisionid=76,inasistenciaid=4,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=401,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=402,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-04-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=403,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-04-09",cantidad=1,detalle="")

    db.faltas.insert(faltaid=404,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-04-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=405,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-04-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=406,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-04-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=407,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-04-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=408,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-04-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=409,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-04-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=410,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-04-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=411,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-04-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=412,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-04-11",cantidad=1,detalle="")

    db.faltas.insert(faltaid=413,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=414,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=415,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=416,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=417,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=418,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=419,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=420,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-04-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=421,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-04-16",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=422,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=423,alumnoid=3,comisionid=76,inasistenciaid=4,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=424,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=425,alumnoid=6,comisionid=76,inasistenciaid=4,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=426,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=427,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=428,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=429,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-04-24",cantidad=1,detalle="")
    db.faltas.insert(faltaid=430,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-04-24",cantidad=1,detalle="")

    db.faltas.insert(faltaid=431,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-04-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=432,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-04-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=433,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-04-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=434,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-04-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=435,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-04-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=436,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-04-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=437,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-04-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=438,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-04-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=439,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-04-25",cantidad=1,detalle="")

    db.faltas.insert(faltaid=440,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=441,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=442,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=443,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=445,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=446,alumnoid=8,comisionid=76,inasistenciaid=4,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=447,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=448,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-04-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=449,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-04-30",cantidad=1,detalle="")

    db.faltas.insert(faltaid=450,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-05-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=451,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-05-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=452,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=453,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-05-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=454,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-05-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=455,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=456,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-05-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=457,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-05-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=458,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-05-02",cantidad=1,detalle="")

    db.faltas.insert(faltaid=459,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=460,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=461,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=462,alumnoid=6,comisionid=76,inasistenciaid=4,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=463,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=464,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=465,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=466,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")
    db.faltas.insert(faltaid=467,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-05-07",cantidad=1,detalle="")

    db.faltas.insert(faltaid=468,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=469,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=470,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=471,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=472,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=473,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=474,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=475,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")
    db.faltas.insert(faltaid=476,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-05-08",cantidad=1,detalle="")

    db.faltas.insert(faltaid=477,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-05-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=478,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-05-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=479,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=480,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-05-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=481,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-05-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=482,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=483,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-05-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=484,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-05-09",cantidad=1,detalle="")
    db.faltas.insert(faltaid=485,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-05-09",cantidad=1,detalle="")

    db.faltas.insert(faltaid=486,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=487,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=488,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=489,alumnoid=6,comisionid=76,inasistenciaid=4,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=490,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=491,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=492,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=493,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-05-14",cantidad=1,detalle="")
    db.faltas.insert(faltaid=494,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-05-14",cantidad=1,detalle="")

    db.faltas.insert(faltaid=495,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=496,alumnoid=3,comisionid=76,inasistenciaid=4,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=497,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=498,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=499,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=500,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=501,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=502,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-05-15",cantidad=1,detalle="")
    db.faltas.insert(faltaid=503,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-05-15",cantidad=1,detalle="")

    db.faltas.insert(faltaid=504,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-05-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=505,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-05-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=506,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=507,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-05-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=508,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-05-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=509,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=510,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-05-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=511,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-05-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=512,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-05-16",cantidad=1,detalle="")

    db.faltas.insert(faltaid=513,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=514,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=515,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=516,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=517,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=518,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=519,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=520,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-05-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=521,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-05-21",cantidad=1,detalle="")

    db.faltas.insert(faltaid=522,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=523,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=524,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=525,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=526,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=527,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=528,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=529,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-05-22",cantidad=1,detalle="")
    db.faltas.insert(faltaid=530,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-05-22",cantidad=1,detalle="")

    db.faltas.insert(faltaid=531,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-05-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=532,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-05-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=533,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=534,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-05-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=535,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-05-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=536,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=537,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-05-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=538,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-05-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=539,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-05-23",cantidad=1,detalle="")

    db.faltas.insert(faltaid=540,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=541,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=542,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=543,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=544,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=545,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=546,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=548,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-05-28",cantidad=1,detalle="")
    db.faltas.insert(faltaid=549,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-05-28",cantidad=1,detalle="")

    db.faltas.insert(faltaid=550,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=551,alumnoid=3,comisionid=76,inasistenciaid=4,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=552,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=553,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=554,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=555,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=556,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=557,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-05-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=558,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-05-29",cantidad=1,detalle="")

    db.faltas.insert(faltaid=559,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-05-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=560,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-05-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=561,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-05-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=562,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-05-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=563,alumnoid=7,comisionid=76,inasistenciaid=5,fecha="2014-05-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=564,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-05-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=565,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-05-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=566,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-05-30",cantidad=1,detalle="")
    db.faltas.insert(faltaid=567,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-05-30",cantidad=1,detalle="")

    db.faltas.insert(faltaid=568,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=569,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=570,alumnoid=5,comisionid=76,inasistenciaid=4,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=571,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=572,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=573,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=574,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=575,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-06-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=576,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-06-04",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=577,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=578,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=579,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=580,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=581,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=582,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=583,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=584,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-06-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=585,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-06-05",cantidad=1,detalle="")

    db.faltas.insert(faltaid=586,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-06-06",cantidad=1,detalle="")
    db.faltas.insert(faltaid=587,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-06-06",cantidad=1,detalle="")
    db.faltas.insert(faltaid=588,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-06-06",cantidad=1,detalle="")
    db.faltas.insert(faltaid=589,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-06-06",cantidad=1,detalle="")
    db.faltas.insert(faltaid=590,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-06-06",cantidad=1,detalle="")
    db.faltas.insert(faltaid=591,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-06-06",cantidad=1,detalle="")
    db.faltas.insert(faltaid=592,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-06-06",cantidad=1,detalle="")
    db.faltas.insert(faltaid=593,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-06-06",cantidad=1,detalle="")
    db.faltas.insert(faltaid=594,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-06-06",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=595,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=596,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=597,alumnoid=5,comisionid=76,inasistenciaid=4,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=598,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=599,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=600,alumnoid=8,comisionid=76,inasistenciaid=4,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=607,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=608,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-06-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=609,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-06-11",cantidad=1,detalle="")

    db.faltas.insert(faltaid=610,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=611,alumnoid=3,comisionid=76,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=612,alumnoid=5,comisionid=76,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=613,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=614,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=615,alumnoid=8,comisionid=76,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=616,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=617,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")
    db.faltas.insert(faltaid=618,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-06-12",cantidad=1,detalle="")

    db.faltas.insert(faltaid=619,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-06-13",cantidad=1,detalle="")
    db.faltas.insert(faltaid=620,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-06-13",cantidad=1,detalle="")
    db.faltas.insert(faltaid=621,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-06-13",cantidad=1,detalle="")
    db.faltas.insert(faltaid=622,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-06-13",cantidad=1,detalle="")
    db.faltas.insert(faltaid=623,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-06-13",cantidad=1,detalle="")
    db.faltas.insert(faltaid=624,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-06-13",cantidad=1,detalle="")
    db.faltas.insert(faltaid=625,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-06-13",cantidad=1,detalle="")
    db.faltas.insert(faltaid=626,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-06-13",cantidad=1,detalle="")
    db.faltas.insert(faltaid=627,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-06-13",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=628,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=629,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=630,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=631,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=632,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=633,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=634,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=635,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-06-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=636,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-06-18",cantidad=1,detalle="")

    db.faltas.insert(faltaid=637,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=638,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=639,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=640,alumnoid=6,comisionid=76,inasistenciaid=4,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=641,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=642,alumnoid=8,comisionid=76,inasistenciaid=4,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=643,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=644,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-06-19",cantidad=1,detalle="")
    db.faltas.insert(faltaid=645,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-06-19",cantidad=1,detalle="")

    db.faltas.insert(faltaid=646,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-06-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=647,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-06-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=648,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-06-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=649,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-06-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=650,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-06-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=651,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-06-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=652,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-06-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=653,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-06-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=654,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-06-20",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=655,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-06-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=656,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-06-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=657,alumnoid=5,comisionid=76,inasistenciaid=4,fecha="2014-06-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=658,alumnoid=6,comisionid=76,inasistenciaid=4,fecha="2014-06-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=659,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-06-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=660,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-06-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=661,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-06-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=662,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-06-25",cantidad=1,detalle="")
    db.faltas.insert(faltaid=663,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-06-25",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=664,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=665,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=666,alumnoid=5,comisionid=76,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=667,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=668,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=669,alumnoid=8,comisionid=76,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=670,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=671,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    db.faltas.insert(faltaid=672,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-06-26",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=673,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-06-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=674,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-06-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=675,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-06-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=676,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-06-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=677,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-06-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=678,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-06-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=679,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-06-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=680,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-06-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=681,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-06-27",cantidad=1,detalle="")
       
    db.faltas.insert(faltaid=682,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=683,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=684,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=685,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=686,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-07-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=687,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-03-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=688,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-03-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=689,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-03-02",cantidad=1,detalle="")
    db.faltas.insert(faltaid=690,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-03-02",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=691,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=692,alumnoid=3,comisionid=76,inasistenciaid=4,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=693,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=694,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=695,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=696,alumnoid=8,comisionid=76,inasistenciaid=4,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=697,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=698,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-07-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=699,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-07-03",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=700,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-07-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=701,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-07-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=702,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-07-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=703,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-07-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=704,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-07-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=705,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-07-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=706,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-07-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=707,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-07-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=708,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-07-04",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=709,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=710,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=711,alumnoid=5,comisionid=76,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=712,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=713,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=714,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=715,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=716,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=717,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-07-10",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=718,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-07-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=719,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-07-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=720,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-07-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=721,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-07-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=722,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-07-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=723,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-07-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=724,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-07-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=725,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-07-11",cantidad=1,detalle="")
    db.faltas.insert(faltaid=726,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-07-11",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=727,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=728,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=729,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=730,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=731,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=732,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=733,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=734,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-07-16",cantidad=1,detalle="")
    db.faltas.insert(faltaid=735,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-07-16",cantidad=1,detalle="")

    db.faltas.insert(faltaid=736,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=737,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=738,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=739,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=740,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=741,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=742,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=743,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
    db.faltas.insert(faltaid=744,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-07-17",cantidad=1,detalle="")
        
    db.faltas.insert(faltaid=745,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-07-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=746,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-07-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=747,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-07-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=748,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-07-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=749,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-07-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=750,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-07-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=751,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-07-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=752,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-07-18",cantidad=1,detalle="")
    db.faltas.insert(faltaid=753,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-07-18",cantidad=1,detalle="")
   
    db.faltas.insert(faltaid=754,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=755,alumnoid=3,comisionid=76,inasistenciaid=4,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=756,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=757,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=758,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=759,alumnoid=8,comisionid=76,inasistenciaid=4,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=760,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=761,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-08-20",cantidad=1,detalle="")
    db.faltas.insert(faltaid=762,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-08-20",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=763,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=764,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=765,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=766,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=777,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=778,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=779,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=780,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-08-21",cantidad=1,detalle="")
    db.faltas.insert(faltaid=781,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-08-21",cantidad=1,detalle="")
   
    db.faltas.insert(faltaid=782,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-08-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=783,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-08-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=784,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-08-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=785,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-08-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=786,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-08-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=787,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-08-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=788,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-08-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=789,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-08-23",cantidad=1,detalle="")
    db.faltas.insert(faltaid=790,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-08-23",cantidad=1,detalle="")
 
    db.faltas.insert(faltaid=791,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=792,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=793,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=794,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=795,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=796,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=797,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=798,alumnoid=10,comisionid=76,inasistenciaid=4,fecha="2014-08-27",cantidad=1,detalle="")
    db.faltas.insert(faltaid=799,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-08-27",cantidad=1,detalle="")
    
    db.faltas.insert(faltaid=809,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-08-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=810,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-08-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=811,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-08-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=812,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-08-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=813,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-08-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=814,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-08-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=815,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-08-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=816,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-08-29",cantidad=1,detalle="")
    db.faltas.insert(faltaid=817,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-08-29",cantidad=1,detalle="")
   
    db.faltas.insert(faltaid=818,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=819,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=820,alumnoid=5,comisionid=76,inasistenciaid=4,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=821,alumnoid=6,comisionid=76,inasistenciaid=4,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=822,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=823,alumnoid=8,comisionid=76,inasistenciaid=4,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=824,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=825,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-09-03",cantidad=1,detalle="")
    db.faltas.insert(faltaid=826,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-09-03",cantidad=1,detalle="")
   
    db.faltas.insert(faltaid=827,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=828,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=829,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=830,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=831,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=832,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=833,alumnoid=9,comisionid=76,inasistenciaid=4,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=834,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-09-04",cantidad=1,detalle="")
    db.faltas.insert(faltaid=835,alumnoid=11, comisionid=76,inasistenciaid=4,fecha="2014-09-04",cantidad=1,detalle="")
   
    db.faltas.insert(faltaid=836,alumnoid=1,comisionid=76,inasistenciaid=5,fecha="2014-09-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=837,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-09-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=838,alumnoid=5,comisionid=76,inasistenciaid=5,fecha="2014-09-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=839,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-09-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=840,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-09-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=841,alumnoid=8,comisionid=76,inasistenciaid=5,fecha="2014-09-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=842,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-09-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=843,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-09-05",cantidad=1,detalle="")
    db.faltas.insert(faltaid=844,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-09-05",cantidad=1,detalle="")
   
    db.faltas.insert(faltaid=845,alumnoid=1,comisionid=76,inasistenciaid=4,fecha="2014-09-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=846,alumnoid=3,comisionid=76,inasistenciaid=5,fecha="2014-09-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=847,alumnoid=5,comisionid=76,inasistenciaid=4,fecha="2014-09-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=848,alumnoid=6,comisionid=76,inasistenciaid=5,fecha="2014-09-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=849,alumnoid=7,comisionid=76,inasistenciaid=4,fecha="2014-09-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=850,alumnoid=8,comisionid=76,inasistenciaid=4,fecha="2014-09-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=851,alumnoid=9,comisionid=76,inasistenciaid=5,fecha="2014-09-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=852,alumnoid=10,comisionid=76,inasistenciaid=5,fecha="2014-09-10",cantidad=1,detalle="")
    db.faltas.insert(faltaid=853,alumnoid=11, comisionid=76,inasistenciaid=5,fecha="2014-09-10",cantidad=1,detalle="")
    
    return {'filas': db(db.faltas.faltaid>0).select()}
    
def cargar_calificaciones():
     # Antes de insertar borramos los registros de la tabla
    db(db.calificaciones.calificacionid>0).delete()
    db.calificaciones.insert(calificacionid=1,descripcion='Orientativa',condicion=None,ayuda=None,equivalencia='False',previa='False')
    db.calificaciones.insert(calificacionid=2,descripcion='TP',condicion=None,ayuda=None,equivalencia='False',previa='False')
    db.calificaciones.insert(calificacionid=3,descripcion='Parcial',condicion=None,ayuda=None,equivalencia='False',previa='False')
    db.calificaciones.insert(calificacionid=4,descripcion='Recuperatorio',condicion='Regular',ayuda='Dentro del Mismo Per\xc3\xadodo',equivalencia='False',previa='False')
    db.calificaciones.insert(calificacionid=5,descripcion='Final',condicion='Regular',ayuda='Anal\xc3\xadtico',equivalencia='False',previa='False')
    db.calificaciones.insert(calificacionid=6,descripcion='Acreditaci\xc3\xb3n',condicion='Pend.Acred.',ayuda='"Previa"',equivalencia='False',previa='False')
    db.calificaciones.insert(calificacionid=7,descripcion='Equivalencia',condicion='Equiv.',ayuda=None,equivalencia='True',previa='False')
    db.calificaciones.insert(calificacionid=8,descripcion='Libre',condicion='Libre',ayuda=None,equivalencia='False',previa='False')
    db.calificaciones.insert(calificacionid=9,descripcion='Final (No Regular)',condicion='No Regular',ayuda=None,equivalencia='False',previa='False')
    db.calificaciones.insert(calificacionid=10,descripcion='',condicion='No Regular',ayuda=None,equivalencia='False',previa='False')
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.calificaciones.calificacionid>0).select()}
def cargar_niveles():
    
    # Antes de insertar borramos los registros de la tabla
    
    db(db.niveles.nivelid>0).delete()  

    # Insertamos los cursos correspondientes
    
    db.niveles.insert(nivelid= 1, descripcion= 'Terciario', ciclo= 2, tipo= "", personalid= "")
    db.niveles.insert(nivelid= 2, descripcion= 'Secundario', ciclo= 2, tipo= "", personalid= "")
                            
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
    
    return {'filas': db(db.niveles.nivelid>0).select()}
