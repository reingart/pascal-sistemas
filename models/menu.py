# -*- coding: utf-8 -*- 

T.force("es")

#########################################################################
## Customize your APP title, subtitle and menus here
#########################################################################

response.title = request.application
#response.subtitle = T('customize me!')

##########################################
## this is the main application menu
## add/remove items as required
##########################################

response.menu = [
    [T('Institucional'), False, URL(request.application,'default','index'), [
        [T('Historia'), False, URL(request.application,'info','historia'), []],
        [T('Por que elegirnos'), False, URL(request.application,'info','por_que_elegirnos'), []],        
        [T('Plantel Docente'), False, URL(request.application,'info','plantel_docente'), []],
        [T('Palabras del Director'), False, URL(request.application,'info','director'), []],
    ]],
    [T('Carreras'), False, URL(request.application,'carreras','index'), [
        [T('Analista de Sistemas'), False, URL(request.application,'carreras','sistemas'), [       
            [T('Tecnicatura en redes informaticas'), False, URL(request.application,'carreras','redes'), []],
]],
        [T('Salud'), False, URL(request.application,'carreras','salud'), [
            [T('Enfermería'), False, URL(request.application,'carreras','salud_enfermeria'), []],
            [T('Auxiliar en enfermeria'), False, URL(request.application,'carreras','salud_auxenfermeria'), []],
            [T('Instrumentación'), False, URL(request.application,'carreras','salud_instrumentacion'), []],
            [T('Análisis Clínicos'), False, URL(request.application,'carreras','salud_laboratorio'), []],
            [T('Radiología'), False, URL(request.application,'carreras','salud_radiologia'), []],
            [T('Cardiología'), False, URL(request.application, 'carreras','salud_cardiologia'),[]],
        ]],
        
    ]],
    [T('Docentes'), False, URL(request.application,'docentes','index'), [ 
       [T('Finales'), False, URL(request.application,'docentes','finales'), []],
       [T('Parciales'), False, URL(request.application,'docentes','parciales'), []],
       [T('Apuntes'), False, URL(request.application,'docentes','apuntes'), []],
       [T('Recursos'), False, URL(request.application,'docentes','recursos'), []],

    ]],
    [T('Alumnos'), False, URL(request.application,'alumnos','index'), [
        [T('Ingresar'), False, URL(request.application,'alumnos','index'), []],
        [T('Registrarse'), False, URL(request.application,'alumnos','index'),[]], 
        
    ]],
    [T('Graduados'), False, URL(request.application,'graduados','index'), []],
    [T('Extensión Terciaria'), False, URL(request.application,'extension','index'), [
        [T('FLISOL 2010'), False, URL("flisol2010",'default','index'), []],
    ]],
    [T('Inserción Laboral'), False, URL(request.application,'laboral','index'), []],
    [T('Admin'), False, "https://www.institutopascal.edu.ar/admin", []],
    ]

response.menu_flisol = [T('FLISOL 2010'), False, URL("flisol2010",'default','index'), []]
