##db = DAL("postgres://reingart:clave@localhost:5432/terciario", pool_size=10)

migrate = True

db.define_table('alumnos',
    Field('alumnoid', type='id'),
    Field('nombre', type='string', length=200),
    Field('dni', type='integer'),
    Field('sexo', type='string', length=10),
    Field('fechanacimiento', type='date'),
    Field('lugarnacimiento', type='string', length=250),
    Field('estadocivil', type='string', length=50),
    Field('nacionalidad', type='string', length=50),
    Field('direccion', type='string', length=200),
    Field('localidad', type='string', length=50),
    Field('cp', type='string', length=7),
    Field('telefono', type='string', length=250),
    Field('email1', type='string', length=100),
    Field('email2', type='string', length=100),
    Field('ingreso', type='date'),
    Field('egreso', type='date', readable= False, writable= False),
    Field('foto', type='upload', length=50),
    Field('user_id', db.auth_user, readable= False, writable= False),
    format= "%(alumnoid)s [%(nombre)s]",
    migrate=migrate)
    
db.define_table('cursos',
    Field('cursoid', type='id'),
    Field('nombre', type='string', length=50),
    Field('codigo', type='string', length=3),
    Field('nivel', type='integer', default=0),
    Field('anio', type='string', length=50),
    Field('seccion', type='string', length=2),
    Field('division', type='string', length=3),
    Field('orden', type='integer', default=0),
    format= "%(cursoid)s [%(nombre)s]",
    migrate=migrate)
    
db.define_table('revistas',
    Field('revistaid', type='id'),
    Field('nombre', type='string', length=50),
    format= "%(revistaid)s [%(nombre)s]",
    migrate=migrate)
    
db.define_table('cargos',
    Field('cargoid', type='id'),
    Field('descripcion', type='string', length=50),
    format= "%(cargoid)s [%(descripcion)s]",
    migrate=migrate)
    
    
db.define_table('secciones',
    Field('seccionid', type='id'),
    Field('descripcion', type='string', length=50),
    format= "%(seccionid)s [%(descripcion)s]",
    migrate=migrate)
    
db.define_table('personal',
    Field('personalid', type='id'),
    Field('E_mail', type='string',length=50),
    Field('facebook', type='string',length=50),
    Field('nombre', type='string', length=50),
    Field('dni', type='integer', length=50),
    Field('nacimiento', type='date'),
    Field('domicilio', type='string', length=50),
    Field('localidad', type='string', length=50),
    Field('cp', type='string', length=50),
    Field('provincia', type='string', length=50),
    Field('telefono', type='string', length=50),
    Field('titulos', type='string', length=255),
    Field('otorgadospor', type='string', length=255),
    Field('fechaotorgamiento', type='string', length=50),
    Field('apto', type='string', length=50),
    Field('nombramiento', type='date'),
    Field('cuil', type='string', length=50),
    Field('foto', type='upload', length=50),
    Field('cargoid', db.cargos),
    Field('user_id', db.auth_user, readable= False, writable= False),

##    Field('seccionid', db.secciones),
    format= "%(personalid)s [%(nombre)s]",
    migrate=migrate)
    
db.define_table('niveles',
    Field('nivelid', type='id'),
    Field('descripcion', type='string', length=50),
    Field('ciclo', type='integer', default=0),
    Field('tipo', type='integer', default=0),
    Field('personalid', db.personal),
    format= "%(nivelid)s [%(descripcion)s]",
    migrate=migrate)
    
db.define_table('apuntes',
    Field('apunteid', type='id'),
    Field('archivo', type='upload', length=50),
    Field('carrera', type='string', length=50),
    Field('descripcion', type='string', default=0),
    Field('profesor', type='string', default=0),
    Field('fecha', type='date', default=0),

    format= "%(apunteid)s [%(descripcion)s]",
    migrate=migrate)
    
db.define_table('carreras',
    Field('carreraid', type='id'),
    Field('nombre', type='string', length=250),
    format= "%(carreraid)s [%(nombre)s]",
    migrate=migrate)
    
db.define_table('planesestudio',
    Field('planestudioid', type='id'),
    Field('descripcion', type='string', length=50),
    Field('aprobadopor', type='string', length=250),
    Field('carreraid', db.carreras),
    Field('desde', type='date'),
    Field('hasta', type='date'),
    format= "%(planestudioid)s [%(descripcion)s]",
    migrate=migrate)
    
db.define_table('ciclos',
    Field('cicloid', type='id'),
    Field('nombre', type='string', length=50),
    Field('anio', type='integer', default=0),
    Field('detalle', type='string', length=100),
    Field('desde', type='date'),
    Field('hasta', type='date'),
    format= "%(cicloid)s [%(nombre)s]",
    migrate=migrate)

db.define_table('catedras',
    Field('catedraid', type='id'),
    Field('nombre', type='string', length=150),
    Field('informe', type='string', length=50),
    Field('boletin', type='string', length=50),
    Field('analitico', type='string', length=50),
    Field('espacio', type='string', length=1),
    Field('abr', type='string', length=50),#abreviaturas
    Field('calificacion', type='string', length=50),
    Field('horas', type='integer', default=0),
    Field('minutos', type='integer', default=0),
    Field('nivelid', db.niveles),
    format= "%(catedraid)s [%(nombre)s]",
    migrate=migrate)
    
db.define_table('materias',
    Field('materiaid', type='id'),
    Field('codigo', type='integer'),
    Field('nombre', type='string', length=100),
    Field('resumen', type='string', length=50),
    Field('cursoid', db.cursos),
    Field('catedraid', db.catedras),
    #Field('codigo', type='string', length=5),
    Field('orden', type='integer', default=0),
    Field('optativa', type='boolean', default=False),
    Field('analitico', type='string', length=250),
    Field('requerida', type='boolean', default=False),
    format= "%(materiaid)s [%(nombre)s]",
    migrate=migrate)



db.define_table('divisiones',
    Field('divisionid', type='id'),
    Field('descripcion', type='string', length=50),
    Field('codigo', type='string', length=5),
    Field('cursoid', db.cursos),
    Field('cicloid', db.ciclos),
    Field('numero', type='string', length=1),
    Field('letra', type='string', length=1),
    Field('turno', type='string', length=1),
    Field('anio', type='integer'),
    format= "%(divisionid)s [%(descripcion)s]",
    migrate=migrate)

db.define_table('asignaturas',
    Field('asignaturaid', type='id'),
    Field('nombre', type='string', length=200),
    Field('materiaid', db.materias),
    Field('cursoid', db.cursos),
    Field('carreraid', db.carreras),
    Field('planestudioid', db.planesestudio),
    Field('orden', type='integer', default=0),
    Field('horas', type='integer'),
    Field('teorica', type='boolean', default=False),
    Field('practica', type='boolean', default=False),
    Field('optativa', type='boolean', default=False),
    Field('faltas1r', type='integer', default=0),
    Field('faltaslibre', type='integer', default=0),
    Field('faltasrecursa', type='integer', default=0),
    Field('cicloid', db.ciclos),
    format= "%(asignaturaid)s [%(nombre)s]",
    migrate= migrate )



db.define_table('calendarios',
    Field('calendarioid', type='id'),
    Field('fecha', type='date'),
    Field('feriado', type='boolean', default=False),
    Field('mensaje', type='string', length=50),
    format= "%(calendarioidid)s [%(fecha)s]",
    migrate=migrate)

db.define_table('calificaciones',
    Field('calificacionid', type='id'),
    Field('descripcion', type='string', length=50),

    Field('condicion', type='string', length=50),
    Field('ayuda', type='text'),
    Field('equivalencia', type='boolean', default=False),
    Field('previa', type='boolean', default=False),
    format= "%(calificacionid)s [%(descripcion)s]",
    migrate=migrate)


db.define_table('correlativas',
    Field('correlativaid', type='id'),
    Field('materiaid', db.materias),
    Field('materiacorrelativa', db.materias),
    Field('planestudioid', db.planesestudio),
    format= "%(correlativaid)s [%(materiaid1)s]",
    migrate=migrate)

db.define_table('horas',
    Field('horaid', type='id'),
    Field('hora', type='string', length=25),
    Field('desde', type='string'),
    Field('hasta', type='string'),
    Field('nivelid', db.niveles),
    format= "%(horaid)s [%(hora)s]",
    migrate=migrate)





db.define_table('inasistencias',
    Field('inasistenciaid', type='id'),
    Field('descripcion', type='string', length=50),
    format= "%(inasistenciaid)s [%(descripcion)s]",
    migrate=migrate)



db.define_table('periodos',
    Field('periodoid', type='id'),
    Field('descripcion', type='string', length=50),
    Field('nivelid', db.niveles),
    Field('cicloid', db.ciclos),
    Field('mes', type='integer', default=0),
    Field('anio', type='integer', default=0),
    Field('trimestre', type='integer', default=0),
    Field('condicion', type='string', length=10),
    Field('cuatrimestre', type='integer', default=0),
    Field('semestre', type='integer', default=0),
    Field('orden', type='integer', default=0),
    Field('codigo', type='string', length=1),
    Field('inicio', type='date'),
    Field('cierre', type='date'),
    Field('tipo', type='integer', default=0),
    Field('dias', type='integer', default=0),
    Field('secuencia', type='integer'),
    Field('notaminima', type='double'),
    format= "%(periodoid)s [%(descripcion)s]",
    migrate=migrate)


db.define_table('notas',
    Field('notaid', type='id'),
    Field('alumnoid', db.alumnos),
    Field('materiaid', db.materias),
    Field('periodoid',db.periodos),
    Field('calificacionid',db.calificaciones ),
    Field('nota', type='double', default=0),
    Field('descripcion', type='string', length=50),
    Field('establecimiento', type='string', length=50),
    Field('observaciones', type='text'),
    Field('fecha', type='date'),
    Field('libro', type='string', length=5),
    Field('folio', type='integer'),
    Field('alta', type='date', default=request.now),
    Field('web', type='boolean', default=False),
    Field('turno', type='string', length=1),
    format= "%(notaid)s [%(nota)s]",
    migrate=migrate)
    
    
db.define_table('parciales',
    Field('parcialid', type='id'),
    Field('alumnoid', db.alumnos),
    Field('materiaid', db.materias),
    Field('personalid',db.personal),
    Field('detalle',type='string'),

    Field('trimestre1',type='integer', default=0 ),
    Field('trimestre2', type='integer', default=0),
    Field('recuperatorio1', type='integer', length=50),
    Field('recuperatorio2', type='integer', length=50),
    Field('condicion', type='text'),
    Field('fecha', type='date'),
    format= "%(parcialid)s [%(detalle)s]",
    migrate=migrate)


    
db.define_table('titulos',
    Field('tituloid', type='id'),
    Field('nombre', type='string', length=250),
    Field('planestudioid', db.planesestudio),
    Field('carreraid', db.carreras),
    Field('cursoid', db.cursos),
    format= "%(tituloidid)s [%(nombre)s]",
    migrate=migrate)
    
db.define_table('comisiones',
    Field('comisionid', type='id'),
    Field('nombre', type='string', length=200),
    Field('divisionid', db.divisiones),
    Field('periodoid', db.periodos),
    Field('materiaid', db.materias),
    Field('personalid', db.personal),
    Field('faltas1r', type='double'),
    Field('faltas2r', type='double'),
    Field('faltaslibre', type='double'),
    Field('faltasrecursa', type='double'),
    format= "%(comisionid)s [%(nombre)s]",
    migrate=migrate)
    
db.define_table('horarios',
    Field('horarioid', type='id'),
    Field('horaid', db.horas),
    Field('comisionid', db.comisiones),
    Field('dia', type='string', length=1),
    Field('detalle', type='string', length=25),
    format= "%(horarioid)s [%(detalle)s]",
    migrate=migrate)

db.define_table('profesores',
    Field('profesorid', type='id'),
    Field('personalid', db.personal),
    Field('comisionid', db.comisiones),
    Field('cargoid', db.cargos),
    Field('revistaid', db.revistas),
    Field('licencia', type='boolean', default=False),
    Field('detalle', type='string', length=50),
    Field('ref', type='string', length=1),
    Field('user_id', db.auth_user, readable= False, writable= False),
    format= "%(profesorid)s [%(detalle)s]",
    migrate=migrate)



db.define_table('sanciones',
    Field('sancionid', type='id'),
    Field('alumnoid', db.alumnos),
    Field('fecha', type='date'),
    Field('cantidad', type='double', default=0),
    Field('tipo', type='string', length=1),
    Field('detalle', type='text'),
    Field('parte', type='integer', default=0),
    format= "%(sancionid)s [%(detalle)s]",
    migrate=migrate)



db.define_table('situaciones',
    Field('situacionid', type='id'),
    Field('detalle', type='string', length=30),
    format= "%(situacionid)s [%(detalle)s]",
    migrate=migrate)


    
db.define_table('faltas',
    Field('faltaid', type='id'),
    Field('alumnoid', db.alumnos),
    Field('comisionid', db.comisiones),
    Field('inasistenciaid', db.inasistencias),
    Field('fecha', type='date'),
    Field('cantidad', type='double', default=1),
    Field('justificado', type='boolean', default=False),
    Field('detalle', type='string', length=50),
    format= "%(faltaid)s [%(detalle)s]",
    migrate=migrate)
    
db.define_table('examenes',
    Field('examenid', type='id'),
    Field('materiaid', db.materias),
    Field('periodoid', db.periodos),
    Field('llamado', type='string', length=1),
    Field('turno', type='string'),
    Field('fecha', type='date'),
    Field('hora', type='string'),
    Field('personalid1', db.personal),
    Field('personalid2', db.personal),
    Field('personalid3', db.personal),
    format= "%(examenid)s [%(llamado)s]",
    migrate=migrate)
    
db.define_table('inscripcionescarrera',
    Field('inscripcionid', type='id'),
    Field('alumnoid', db.alumnos),
    Field('carreraid', db.carreras),
    Field('alta', type='date', default=request.now.date(), required= True),
    Field('baja', type='date', readable= False, writable= False),
    migrate=migrate)

db.define_table('inscripcionescomision',
    Field('inscripcionid', type='id'),
    Field('alumnoid', db.alumnos),
    Field('comisionid', db.comisiones),
    Field('alta', type='date'),
    Field('baja', type='date'),
    Field('condicion', type='string', length=10),
    migrate=migrate)

db.define_table('inscripcionesdivision',
    Field('inscripcionid', type='id'),
    Field('alumnoid', db.alumnos),
    Field('divisionid', db.divisiones),
    Field('alta', type='date'),
    Field('baja', type='date'),
    Field('condicion', type='string', length=10),
    migrate=migrate)

db.define_table('inscripcionesexamen',
    Field('inscripcionid', type='id'),
    Field('alumnoid', db.alumnos),
    Field('examenid', db.examenes),
    Field('condicion', type='string', length=10),
    Field('alta', type='date'),
    Field('baja', type='date'),
    Field('confirmar', type='boolean', default=False),
    Field('valido', type='boolean', default=False),
    migrate=migrate)
    
db.define_table('constancia_modelo',
    Field('modeloid', type='id'),
    Field('descripcion', type='string', length=200),
    Field('plantilla', type='text', comment=T('texto base')),
    format= "%(modeloid)s [%(descripcion)s]",
    migrate=migrate)


db.define_table('constancia',
    Field('constanciaid', type='id'),
    Field('alumnoid', db.alumnos),
    Field('modeloid', db.constancia_modelo),
    Field('fecha_alta', type='date'),
    Field('valido', type='boolean', default=False),
    migrate=migrate)
