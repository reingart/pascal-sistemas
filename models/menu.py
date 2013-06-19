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
        [T('Analista de Sistemas'), False, URL(request.application,'carreras','sistemas'), []],
        [T('Salud'), False, URL(request.application,'carreras','salud'), [
            [T('Enfermería'), False, URL(request.application,'carreras','salud_enfermeria'), []],
            [T('Instrumentación'), False, URL(request.application,'carreras','salud_instrumentacion'), []],
            [T('Análisis Clínicos'), False, URL(request.application,'carreras','salud_laboratorio'), []],
            [T('Radiología'), False, URL(request.application,'carreras','salud_radiologia'), []],
        ]],
    ]],
    [T('Docentes'), False, URL(request.application,'docentes','index'), [ 
       [T('Asistencias'), False, URL(request.application,'docentes','asistencias'), []],
       [T('Horarios'), False, URL(request.application,'docentes','horarios'), []],
       [T('Finales'), False, URL(request.application,'docentes','finales'), []],
       [T('Parciales'), False, URL(request.application,'docentes','parciales'), []],
       [T('Apuntes'), False, URL(request.application,'docentes','apuntes'), []],
    ]],
    [T('Alumnos'), False, URL(request.application,'alumnos','index'), [
        [T('Horario'), False, URL(request.application,'alumnos','horarios'), []],
        [T('Parciales'), False, URL(request.application,'alumnos','index'),[
            [T('Cuatrimentrales'), False, URL(request.application,'alumnos','parcial'),[]],
            [T('Finales'), False, URL(request.application,'alumnos','examenes'),[]],
            ]], 
        [T('Inscripciones'), False, URL(request.application,'alumnos','index'),[
            [T('En Curso'), False, URL(request.application,'alumnos','inscripciones'),[]],
            [T('Finales'), False, URL(request.application,'alumnos','final'),[]],
            ]],
        [T('Inasistencias'), False, URL(request.application,'alumnos','inasistencias'),[]],
        [T('Material de estudio'), False, URL(request.application,'alumnos','archivos'),[]],
    ]],
    
    [T('Graduados'), False, URL(request.application,'graduados','index'), []],
    [T('Extensión Terciaria'), False, URL(request.application,'extension','index'), [
        [T('FLISOL 2010'), False, URL("flisol2010",'default','index'), []],
    ]],
    [T('Inserción Laboral'), False, URL(request.application,'laboral','index'), []],
    [T('Admin'), False, "https://www.institutopascal.edu.ar/admin", []],
    ]

response.menu_flisol = [T('FLISOL 2010'), False, URL("flisol2010",'default','index'), []]
