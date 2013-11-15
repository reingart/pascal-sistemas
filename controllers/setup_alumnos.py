# coding: utf8
# intente algo como
def index(): return dict(message="hello from setup_alumnos.py")
####### FUNCION DE PRUEBA---INSERT EN TABLA ALUMNOS---######

db1= DAL("postgres://luka:1234@127.0.0.1:5432/practica")

def insert_alumnos():
    
    filas= db1.executesql('SELECT * FROM alumnos', as_dict= True)
    
    for fila in filas:
    
        db.alumnos.insert(alumnoid= fila['alumnoid'], 
                            nombre= fila['alumno'], 
                            codigo= fila['codigo'], 
                            dni= fila['dni'], 
                            sexo= fila['sexo'], 
                            fechanacimiento= fila['fechanacimiento'], 
                            lugarnacimiento= fila['lugarnacimiento'], 
                            estadocivil= fila['estadocivil'], 
                            nacionalidad= fila['nacionalidad'], 
                            direccion= fila['direccion'], 
                            localidad= fila['localidad'], 
                            cp= fila['cp'],
                            telefonos= fila['telefonos'], 
                            email1= fila['email1'], 
                            email2= fila['email2'], 
                            ingreso= fila['ingreso'], 
                            egreso= fila['egreso'])
        
    return {'filas': filas}
    
    
def insert_ciclo():
    
    filas= db1.executesql('SELECT * FROM ciclos', as_dict= True)
    
    for fila in filas:
    
        db.ciclos.insert(cicloid= fila['cicloid'], 
                            nombre= fila['ciclo'], 
                            anio= fila['año'], 
                            detalle= fila['detalle'], 
                            desde= fila['desde'], 
                            hasta= fila['hasta'] )
        
    return {'filas': filas}
    
def insert_division():
    
    filas= db1.executesql('SELECT * FROM divisiones', as_dict= True)
    
    for fila in filas:
    
        db.divisiones.insert(divisionid= fila['divisionid'], 
                            descripcion= fila['division'], 
                            codigo= fila['codigo'], 
                            cursoid= fila['cursoid'], 
                            cicloid= fila['cicloid'], 
                            numero= fila['numero'], 
                            letra= fila['letra'], 
                            turno= fila['turno'], 
                            anio= fila['año'] )
        
    return {'filas': filas}
    

    
def insert_materias():
    
    db.materias.insert(codigo=500, nombre= "ALGEBRA", cursoid=1, catedraid=3)
    db.materias.insert(codigo=501, nombre= "ANALISIS MATEMATICO I", cursoid=1, catedraid=3)
    
      
        
    return dict()
    
def insert_catedra():
    
    filas= db1.executesql('SELECT * FROM catedras', as_dict= True)
    
    for fila in filas:
    
        db.catedras.insert(catedraid= fila['catedraid'], 
                            nombre= fila['catedra'], 
                            informe= fila['informe'], 
                            boletin= fila['boletin'], 
                            analitico= fila['analítico'], 
                            espacio= fila['espacio'], 
                            abr= fila['abr'], 
                            calificacion= fila['calificacion'], 
                            horas= fila['horas'], 
                            minutos= fila['minutos'], 
                            nivelid= fila['nivelid'])
        
    return {'filas': filas}
    
def insert_carrera():
    
    filas= db1.executesql('SELECT * FROM carreras', as_dict= True)
    
    for fila in filas:
    
        db.carreras.insert(carreraid= fila['carreraid'], 
                            nombre= fila['carrera'] )
                            
        
    return {'filas': filas}
    
def insert_planestudio():
    
    filas= db1.executesql('SELECT * FROM planesestudio', as_dict= True)
    
    for fila in filas:
    
        db.planesestudio.insert(planestudioid= fila['planestudioid'], 
                            descripcion= fila['planestudio'], 
                            aprobadopor= fila['aprobadopor'], 
                            carreraid= fila['carreraid'], 
                            desde= fila['desde'], 
                            hasta= fila['hasta'] )
        
    return {'filas': filas}
    
def insert_asignaturas():
    
    db.asignaturas.insert(nombre= "SALUD PUBLICA", materiaid=125, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "EST. Y FUNCION DEL CUERPO HUMANO", materiaid=126, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "BIOFISICA Y BIOQUIMICA", materiaid=127, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "MICROBIOLOGIA Y PARASITOLOGIA", materiaid=128, carreraid=2, planestudioid=4, cicloid=2)    
    db.asignaturas.insert(nombre= "FUNDAMENTOS DE NUTRICION", materiaid=129, carreraid=2, planestudioid=4, cicloid=2)    
    db.asignaturas.insert(nombre= "ENFERM. FUND. PRACT. Y TENDENCIAS", materiaid=130, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "ENFERMERIA MATERNO INFANTIL I", materiaid=131, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "FARMOCOLOGIA EN ENFERMERIA", materiaid=132, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "PRACTICA I", materiaid=133, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "INT. A LA INVESTIGACION EN SALUD", materiaid=134, carreraid=2, planestudioid=4, cicloid=2)    
    db.asignaturas.insert(nombre= "EPIDEMIOLOGIA Y ESTADISTICA EN SALUD", materiaid=135, carreraid=2, planestudioid=4, cicloid=2)    
    db.asignaturas.insert(nombre= "INFORMATICA", materiaid=136, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "ENFERMERIA DELADULTO Y EL ANCIANO", materiaid=137, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "DIETETICA EN ENFERMERIA", materiaid=138, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "ENFERMERIA EN SALUD MENTAL", materiaid=139, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "EDI", materiaid=140, carreraid=2, planestudioid=4, cicloid=2)    
    db.asignaturas.insert(nombre= "PRACTICA II", materiaid=141, carreraid=2, planestudioid=4, cicloid=2)    
    db.asignaturas.insert(nombre= "EDUCACION EN SALUD", materiaid=142, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "ORG. Y GESTION SERV. SALUD", materiaid=143, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "INV. Y PLANIF. EN SALUD", materiaid=144, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "INGLES", materiaid=145, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "ENFERM. MATERNO-INF. II", materiaid=146, carreraid=2, planestudioid=4, cicloid=2)    
    db.asignaturas.insert(nombre= "ORG. Y GESTION SERV. DE ENFERM.", materiaid=147, carreraid=2, planestudioid=4, cicloid=2)    
    db.asignaturas.insert(nombre= "ENFERM. EN EMERG. Y CATASTROFES", materiaid=148, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "ASPECTOS ETICOS Y LEGALES DE LA PRAC. PROF", materiaid=149, carreraid=2, planestudioid=4, cicloid=2)   
     
    db.asignaturas.insert(nombre= "EDI II", materiaid=150, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "PRACTICA III", materiaid=151, carreraid=2, planestudioid=4, cicloid=2)
    
    db.asignaturas.insert(nombre= "CONDICIONES Y MEDIO AMBIENTE DEL TRABAJO", materiaid=152, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "SALUD PUBLICA I", materiaid=153, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "BIOLOGIA HUMANA", materiaid=154, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "FUNDAMENTOS DEL CUIDADO", materiaid=155, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "CUIDADOS DE LA SALUD CENTRADOS EN LA COMUNIDAD Y LA FAMILIA", materiaid=156, carreraid=2, planestudioid=4, cicloid=2)
    db.asignaturas.insert(nombre= "PRACTICA I", materiaid=157, carreraid=2, planestudioid=4, cicloid=2)
    
    return dict ()
    
def insert_calendario():
    
    filas= db1.executesql('SELECT * FROM calendario', as_dict= True)
    
    for fila in filas:
    
        db.calendarios.insert(calendarioid= fila['id'], 
                            fecha= fila['fecha'], 
                            feriado= fila['feriado'], 
                            mensaje= fila['mensaje'] )
        
    return {'filas': filas}
    
def insert_calificacion():
    
    filas= db1.executesql('SELECT * FROM calificaciones', as_dict= True)
    
    for fila in filas:
    
        db.calificaciones.insert(calificacionid= fila['calificacionid'], 
                            descripcion= fila['calificacion'],   
                            condicion= fila['condicion'], 
                            ayuda= fila['ayuda'], 
                            equivalencia= fila['equivalencia'], 
                            previa= fila['previa'] )
        
    return {'filas': filas}
    
    
def insert_periodo():
    
    filas= db1.executesql('SELECT * FROM periodos', as_dict= True)
    
    for fila in filas:
        print fila
        db.periodos.insert(periodoid= fila['periodoid'], 
                            descripcion= fila['periodo'], 
                            nivelid= fila['nivelid'], 
                            cicloid= fila['cicloid'], 
                            mes= fila['mes'], 
                            anio= fila['anio'], 
                            trimestre= fila['trimestre'], 
                            condicion= fila['condicion'], 
                            cuatrimestre= fila['cuatrimestre'], 
                            semestre= fila['semestre'], 
                            orden= fila['orden'], 
                            codigo= fila['codigo'],
                            inicio= fila['inicio'], 
                            cierre= fila['cierre'], 
                            tipo= fila['tipo'],
                            dias= fila['dias'],
                            secuencia= fila['secuencia'], 
                            notaminima= fila['notaminima'] )
        
    return {'filas': filas}
    
def insert_titulos():
    
    filas= db1.executesql('SELECT * FROM titulos', as_dict= True)
    
    for fila in filas:
    
        db.titulos.insert(tituloid= fila['tituloid'], 
                            nombre= fila['titulo'], 
                            planestudioid= fila['planestudioid'], 
                            carreraid= fila['carreraid'], 
                            cursoid= fila['cursoid'] )
        
    return {'filas': filas}
    

    
def insert_nota():
    
    filas= db1.executesql('SELECT * FROM notas', as_dict= True)
    
    for fila in filas:
    
        db.notas.insert(notaid= fila['notaid'], 
                            alumnoid= fila['alumnoid'], 
                            materiaid= fila['materiaid'], 
                            periodoid= fila['periodoid'], 
                            calificacionid= fila['calificacionid'], 
                            nota= fila['nota'], 
                            descripcion= fila['descripcion'], 
                            establecimiento= fila['establecimiento'],
                            observaciones= fila['observaciones'], 
                            fecha= fila['fecha'], 
                            libro= fila['libro'], 
                            folio= fila['folio'], 
                            alta= fila['alta'], 
                            web= fila['web'],
                            turno= fila['turno'] )
        
    return {'filas': filas}
    
def insert_correlativas():
    
    filas= db1.executesql('SELECT * FROM correlativas', as_dict= True)
    
    for fila in filas:
    
        db.correlativas.insert(correlativaid= fila['correlativaid'], 
                            materiaid1= fila['materiaid1'], 
                            materiaid2= fila['materiaid2'], 
                            planestudioid= fila['planestudioid'] )
        
    return {'filas': filas}
    
    
    
def insert_comision():
    
    db.comisiones.insert(nombre= "SALUD PUBLICA", materiaid=125, divisionid=1, periodoid=22)
    db.comisiones.insert(nombre= "EST. Y FUNCION DEL CUERPO HUMANO", materiaid=126, divisionid=1, periodoid=22, personalid=15)
    db.comisiones.insert(nombre= "BIOFISICA Y BIOQUIMICA", materiaid=127, divisionid=1, periodoid=22, personalid=15)
    db.comisiones.insert(nombre= "MICROBIOLOGIA Y PARASITOLOGIA", materiaid=128, divisionid=1, periodoid=22, personalid=24)
    db.comisiones.insert(nombre= "FUNDAMENTOS DE NUTRICION", materiaid=129, divisionid=1, periodoid=22)
    db.comisiones.insert(nombre= "ENFERM. FUND. PRACT. Y TENDENCIAS", materiaid=130, divisionid=1, periodoid=22, personalid=25)
    db.comisiones.insert(nombre= "ENFERMERIA MATERNO INFANTIL I", materiaid=131, divisionid=1, periodoid=22, personalid=24)    
    db.comisiones.insert(nombre= "FARMACOLOGIA EN ENFERMERIA", materiaid=132, divisionid=1, periodoid=22, personalid=15)
    
    db.comisiones.insert(nombre= "PRACTICA I", materiaid=133, divisionid=1, periodoid=22, personalid=24)
    
    db.comisiones.insert(nombre= "INT. A LA INVESTIGACION EN SALUD", materiaid=134, divisionid=2, periodoid=22, personalid=25)
    db.comisiones.insert(nombre= "EPIDEMIOLOGIA Y ESTADISTICA EN SALUD", materiaid=135, divisionid=2, periodoid=22, personalid=25)
    db.comisiones.insert(nombre= "INFORMATICA", materiaid=136, divisionid=2, periodoid=22, personalid=11)
    db.comisiones.insert(nombre= "ENFERMERIA DEL ADULTO Y EL ANCIANO", materiaid=137, divisionid=2, periodoid=22, personalid=25)
    db.comisiones.insert(nombre= "DIETETICA EN ENFERMERIA", materiaid=138, divisionid=2, periodoid=2)
    db.comisiones.insert(nombre= "ENFERMERIA EN SALUD MENTAL", materiaid=139, divisionid=2, periodoid=22, personalid=25)
    db.comisiones.insert(nombre= "EDI", materiaid=140, divisionid=2, periodoid=22, personalid=24)
    db.comisiones.insert(nombre= "PRACTICA II", materiaid=141, divisionid=2, periodoid=22, personalid=24)
    
    db.comisiones.insert(nombre= "EDUCACION EN SALUD", materiaid=142, divisionid=3, periodoid=22, personalid=26)
    db.comisiones.insert(nombre= "ORG. Y GESTION SERV. SALUD", materiaid=143, divisionid=3, periodoid=22, personalid=25)
    db.comisiones.insert(nombre= "INV. Y PLANIF. EN SALUD", materiaid=144, divisionid=3, periodoid=22, personalid=25)
    db.comisiones.insert(nombre= "INGLES", materiaid=145, divisionid=3, periodoid=22, personalid=9)
    db.comisiones.insert(nombre= "ENFERM. MATERNO-INF. II", materiaid=146, divisionid=3, periodoid=22, personalid=24)
    
    db.comisiones.insert(nombre= "ORG. Y GESTION SERV. DE ENFERM.", materiaid=147, divisionid=3, periodoid=22, personalid=25)
    db.comisiones.insert(nombre= "ENFERM. EN EMERG. Y CATASTROFES", materiaid=148, divisionid=3, periodoid=22, personalid=24)
    db.comisiones.insert(nombre= "ASPECTOS ETICOS Y LEGALES DE LA PRAC. PROF", materiaid=149, divisionid=3, periodoid=22, personalid=25)
    db.comisiones.insert(nombre= "EDI II", materiaid=150, divisionid=3, periodoid=22, personalid=24)
    db.comisiones.insert(nombre= "PRACTICA III", materiaid=151, divisionid=3, periodoid=22, personalid=24)
    
    db.comisiones.insert(nombre= "CONDICIONES Y MEDIO AMBIENTE DEL TRABAJO", materiaid=152, divisionid=1, periodoid=22, personalid=24)
    db.comisiones.insert(nombre= "SALUD PUBLICA I", materiaid=153, divisionid=1, periodoid=22, personalid=27)
    db.comisiones.insert(nombre= "BIOLOGIA HUMANA", materiaid=154, divisionid=1, periodoid=22, personalid=15)
    db.comisiones.insert(nombre= "FUNDAMENTOS DEL CUIDADO", materiaid=155, divisionid=1, periodoid=22, personalid=25)
    db.comisiones.insert(nombre= "CUIDADOS DE LA SALUD CENTRADOS EN LA COMUNIDAD Y LA FAMILIA", materiaid=156, divisionid=1, periodoid=22, personalid=25)
    db.comisiones.insert(nombre= "PRACTICA I", materiaid=157, divisionid=1, periodoid=22, personalid=24)
    
    return dict ()
    
def insert_inscripcioncomision():
    
    filas= db1.executesql('SELECT * FROM inscripcionescomision', as_dict= True)
    
    for fila in filas:
    
        db.inscripcionescomision.insert(inscripcionid= fila['inscripcionid'], 
                            alumnoid= fila['alumnoid'], 
                            comisionid= fila['comisionid'], 
                            alta= fila['alta'], 
                            baja= fila['baja'], 
                            condicion= fila['condicion'] )
        
    return {'filas': filas}
    
def insert_situaciones():
    
    filas= db1.executesql('SELECT * FROM situaciones', as_dict= True)
    
    for fila in filas:
    
        db.situaciones.insert(situacionid= fila['situacionid'], 
                            detalle= fila['situacion'] )
                            
        
    return {'filas': filas}
    
def insert_inscripcionexamen():
    
    filas= db1.executesql('SELECT * FROM inscripcionesexamen', as_dict= True)
    
    for fila in filas:
    
        db.inscripcionesexamen.insert(inscripcionid= fila['inscripcionid'], 
                            alumnoid= fila['alumnoid'], 
                            examenid= fila['examenid'], 
                            condicion= fila['condicion'], 
                            alta= fila['alta'], 
                            baja= fila['baja'], 
                            confirmar= fila['confirmar'], 
                            valido= fila['valido'] )
        
    return {'filas': filas}

def insert_inscripciondivision():
    
    filas= db1.executesql('SELECT * FROM inscripcionesdivision', as_dict= True)
    
    for fila in filas:
    
        db.inscripcionesdivision.insert(inscripcionid= fila['inscripcionid'], 
                            alumnoid= fila['alumnoid'], 
                            divisionid= fila['divisionid'], 
                            alta= fila['alta'], 
                            baja= fila['baja'], 
                            condicion= fila['condicion'] )
        
    return {'filas': filas}
    
def insert_faltas():
    
    filas= db1.executesql('SELECT * FROM faltas', as_dict= True)
    
    for fila in filas:
    
        db.faltas.insert(faltaid= fila['faltaid'], 
                            alumnoid= fila['alumnoid'], 
                            comisionid= fila['comisionid'], 
                            inasistenciaid= fila['inasistenciaid'], 
                            fecha= fila['fecha'], 
                            cantidad= fila['cantidad'], 
                            justificado= fila['justificado'], 
                            detalle= fila['detalle'], 
                            web= fila['web'])
        
    return {'filas': filas}
    
def insert_sancion():
    
    filas= db1.executesql('SELECT * FROM sanciones', as_dict= True)
    
    for fila in filas:
    
        db.sanciones.insert(sancionid= fila['sancionid'], 
                            alumnoid= fila['alumnoid'], 
                            fecha= fila['fecha'], 
                            cantidad= fila['cantidad'], 
                            tipo= fila['tipo'], 
                            detalle= fila['detalle'], 
                            parte= fila['parte'])
        
    return {'filas': filas}
    

def insert_secciones():
    
    filas= db1.executesql('SELECT * FROM secciones', as_dict= True)
    
    for fila in filas:
    
        db.secciones.insert(seccionid= fila['seccionid'], 
                            descripcion= fila['seccion'] )
                            
        
    return {'filas': filas}
