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
        [T('Analista de Sistemas'), False, URL(request.application,'carreras','sistemas'), [[T('Tecnicatura en redes informaticas'), False, URL(request.application,'carreras','rrhh'), []]]],
        
        [T('Salud'), False, URL(request.application,'carreras','salud'), [
            [T('Enfermería'), False, URL(request.application,'carreras','salud_enfermeria'), []],
            [T('Instrumentación'), False, URL(request.application,'carreras','salud_instrumentacion'),  []],
            [T('Laboratorio'), False, URL(request.application,'carreras','salud_laboratorio'), []],
            [T('Radiología'), False, URL(request.application,'carreras','salud_radiologia'), []],
            [T('Cardiología'), False, URL(request.application,'carreras','salud_cardiologia'), []],
            [T('Auxiliar en enfermeria'), False, URL(request.application,'carreras','salud_auxenfermeria'), []],


            
        ]],
    ]],
    

    
    

    #[T('Tramites'), False, URL(request.application,'tramites','index'), [
     #   [T('Iniciar'), False, URL(request.application,'tramites','iniciar'), []],
      #  [T('Consultar'), False, URL(request.application,'tramites','consultar'),[]],
       # [T('Actualizar'), False, URL(request.application,'tramites','actualizar'),[]],
    #]],   
         
    



    [T('Graduados'), False, URL(request.application,'graduados','index'), []],
    [T('Extensión Terciaria'), False, URL(request.application,'extension','index'), [
        [T('FLISOL 2010'), False, URL("flisol2010",'default','index'), []],
    ]],
    [T('Inserción Laboral'), False, URL(request.application,'laboral','index'), []],
    [T('Admin'), False, "https://www.institutopascal.edu.ar/admin", []],
    
    
    [T('CAMPUS WEB'), False, URL(request.application,'default','index'), [
        [T('Alumnos'), False, URL(request.application,'default','index'), [
        [T('Ingresar'), False, URL(request.application,'alumnos','index'), []],
        [T('Manual de usuario'), False, URL(request.application,'default','index'), []],
       ]],
       
    [T('Docentes'), False, URL(request.application,'docentes','index'), [ 
       [T('Ingresar'), False, URL(request.application,'docentes','index'), []],
       [T('Manual de usuario'), False, URL(request.application,'docentes','Manual'), []],
      
    ]],
        
    ]],   
    
    ]

response.menu_flisol = [T('FLISOL 2010'), False, URL("flisol2010",'default','index'), []]
