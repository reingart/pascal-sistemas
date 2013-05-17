db = DAL("postgres://reingart:clave@localhost:5432/terciario", pool_size=10)

migrate = False

db.define_table('alumnos',
    Field('alumnoid', type='id'),
    Field('alumno', type='string', length=200),
    Field('codigo', type='string', length=50),
    Field('dni', type='integer'),
    Field('sexo', type='string', length=1),
    Field('fechanacimiento', type='date'),
    Field('lugarnacimiento', type='string', length=250),
    Field('estadocivil', type='string', length=50),
    Field('nacionalidad', type='string', length=50),
    Field('direccion', type='string', length=200),
    Field('localidad', type='string', length=50),
    Field('cp', type='string', length=7),
    Field('telefonos', type='string', length=250),
    Field('email1', type='string', length=100),
    Field('email2', type='string', length=100),
    Field('ingreso', type='date'),
    Field('egreso', type='date'),
    Field('motivo', type='string', length=1),
    Field('destino', type='string', length=50),
    Field('padre', type='string', length=250),
    Field('madre', type='string', length=250),
    Field('emergencias', type='string', length=200),
    Field('nivelestudio', type='string', length=1),
    Field('estudioscompletos', type='boolean', default=False),
    Field('estudioscursadosen', type='string', length=50),
    Field('titulo', type='string', length=200),
    Field('faltasolicitudinscripcion', type='boolean', default=False),
    Field('faltareglamentoreservavacante', type='boolean', default=False),
    Field('faltafotos', type='boolean', default=False),
    Field('faltaaptofisico', type='boolean', default=False),
    Field('faltavencimientoapto', type='boolean', default=False),
    Field('faltadni', type='boolean', default=False),
    Field('faltapartidanacimiento', type='boolean', default=False),
    Field('faltatitulosecundariolegalizado', type='boolean', default=False),
    Field('faltaanaliticopase', type='boolean', default=False),
    Field('faltaconstaciatitulotramite', type='boolean', default=False),
    Field('faltavencimientoconstanciatitulotramite', type='boolean', default=False),
    Field('faltaconstaciapasetramite', type='boolean', default=False),
    Field('faltavencimientoconstanciapasetramite', type='boolean', default=False),
    Field('faltaconstaciamateriasaprobadas', type='boolean', default=False),
    Field('faltavencimientoconstanciamateriasaprobadas', type='boolean', default=False),
    Field('faltaautorizacionretiroalumno', type='boolean', default=False),
    Field('faltafichamedica', type='boolean', default=False),
    Field('faltasolicitudsocio', type='boolean', default=False),
    Field('faltavacunas', type='boolean', default=False),
    Field('faltacertificadobucodental', type='boolean', default=False),
    Field('faltainformenivelinicial', type='boolean', default=False),
    Field('faltacertificadoseptimogrado', type='boolean', default=False),
    Field('faltacertificadoaprobacionseptimogrado', type='boolean', default=False),
    Field('faltaboletin', type='boolean', default=False),
    Field('s', type='string', length=50),
    Field('t', type='string', length=50),
    Field('a', type='string', length=50),
    Field('r', type='string', length=50),
    Field('folmat', type='string', length=50),
    Field('lm', type='integer', default=0),
    Field('fm', type='integer', default=0),
    Field('baja', type='date'),
    Field('planestudioid', type='integer'),
    migrate=migrate)

db.define_table('asignaturas',
    Field('asignaturaid', type='id'),
    Field('asignatura', type='string', length=200),
    Field('materiaid', type='integer', default=0),
    Field('cursoid', type='integer', default=0),
    Field('carreraid', type='integer', default=0),
    Field('planestudioid', type='integer', default=0),
    Field('orden', type='integer', default=0),
    Field('horas', type='integer'),
    Field('teorica', type='boolean', default=False),
    Field('práctica', type='boolean', default=False),
    Field('sexo', type='string', length=1),
    Field('optativa', type='boolean', default=False),
    Field('safs', type='integer', default=0),
    Field('faltas1r', type='integer', default=0),
    Field('faltaslibre', type='integer', default=0),
    Field('faltasrecursa', type='integer', default=0),
    Field('cicloid', type='integer'),
    migrate=migrate)

db.define_table('calendario',
    Field('id', type='id'),
    Field('fecha', type='date'),
    Field('feriado', type='boolean', default=False),
    Field('mensaje', type='string', length=50),
    migrate=migrate)

db.define_table('calificaciones',
    Field('calificacionid', type='integer', default=0),
    Field('calificacion', type='string', length=50),
    Field('codigo', type='string', length=1),
    Field('id', type='string', length=1),
    Field('condicion', type='string', length=50),
    Field('ayuda', type='text'),
    Field('equivalencia', type='boolean', default=False),
    Field('previa', type='boolean', default=False),
    primarykey=['calificacionid'],
    migrate=migrate)

db.define_table('cargos',
    Field('cargoid', type='id'),
    Field('cargo', type='string', length=50),
    migrate=migrate)

db.define_table('carreras',
    Field('carreraid', type='integer', default=0),
    Field('carrera', type='string', length=250),
    primarykey=['carreraid'],
    migrate=migrate)

db.define_table('catedras',
    Field('catedraid', type='id'),
    Field('catedra', type='string', length=150),
    Field('informe', type='string', length=50),
    Field('boletin', type='string', length=50),
    Field('analítico', type='string', length=50),
    Field('espacio', type='string', length=1),
    Field('abr', type='string', length=50),
    Field('calificacion', type='string', length=50),
    Field('horas', type='integer', default=0),
    Field('minutos', type='integer', default=0),
    Field('nivelid', type='integer', default=0),
    Field('codigo', type='string', length=5),
    migrate=migrate)

db.define_table('ciclos',
    Field('cicloid', type='id'),
    Field('ciclo', type='string', length=50),
    Field('año', type='integer', default=0),
    Field('detalle', type='string', length=100),
    Field('desde', type='date'),
    Field('hasta', type='date'),
    migrate=migrate)

db.define_table('comisiones',
    Field('comisionid', type='id'),
    Field('comision', type='string', length=200),
    Field('divisionid', type='integer'),
    Field('periodoid', type='integer'),
    Field('materiaid', type='integer'),
    Field('personalid', type='integer'),
    Field('sexo', type='string', length=1),
    Field('safs', type='double'),
    Field('faltas1r', type='double'),
    Field('faltas2r', type='double'),
    Field('faltaslibre', type='double'),
    Field('faltasrecursa', type='double'),
    Field('id', type='integer', default=0),
    migrate=migrate)

db.define_table('correlativas',
    Field('correlativaid', type='id'),
    Field('materiaid1', type='integer'),
    Field('materiaid2', type='integer'),
    Field('planestudioid', type='integer'),
    migrate=migrate)

db.define_table('cursos',
    Field('cursoid', type='id'),
    Field('curso', type='string', length=50),
    Field('codigo', type='string', length=3),
    Field('nivel', type='integer', default=0),
    Field('año', type='string', length=50),
    Field('seccion', type='string', length=2),
    Field('division', type='string', length=3),
    Field('nivelid', type='integer', default=0),
    Field('personalid', type='integer', default=0),
    Field('ttp', type='boolean', default=False),
    Field('subvencion', type='string', length=50),
    Field('arancelbase', type='string', length=50),
    Field('siguientegrupoid', type='integer'),
    Field('orden', type='integer', default=0),
    migrate=migrate)

db.define_table('divisiones',
    Field('divisionid', type='integer', default=0),
    Field('division', type='string', length=50),
    Field('codigo', type='string', length=5),
    Field('cursoid', type='integer'),
    Field('cicloid', type='integer'),
    Field('numero', type='string', length=1),
    Field('letra', type='string', length=1),
    Field('turno', type='string', length=1),
    Field('año', type='integer'),
    Field('sexo', type='string', length=1),
    Field('id', type='integer'),
    Field('boletinformularioid', type='integer'),
    primarykey=['divisionid'],
    migrate=migrate)

db.define_table('examenes',
    Field('examenid', type='id'),
    Field('materiaid', type='integer'),
    Field('periodoid', type='integer'),
    Field('llamado', type='string', length=1),
    Field('turno', type='string', length=1),
    Field('fecha', type='date'),
    Field('hora', type='date'),
    Field('personalid1', type='integer'),
    Field('personalid2', type='integer'),
    Field('personalid3', type='integer', default=0),
    Field('personalid4', type='integer'),
    migrate=migrate)

db.define_table('faltas',
    Field('faltaid', type='id'),
    Field('alumnoid', type='integer', default=0),
    Field('comisionid', type='integer'),
    Field('inasistenciaid', type='integer', default=0),
    Field('fecha', type='date'),
    Field('cantidad', type='double', default=0),
    Field('justificado', type='boolean', default=False),
    Field('detalle', type='string', length=50),
    Field('id', type='integer', default=0),
    Field('__xmin', type='integer', default=0),
    Field('web', type='boolean', default=False),
    migrate=migrate)

db.define_table('horarios',
    Field('horarioid', type='integer'),
    Field('horaid', type='integer'),
    Field('dia', type='string', length=1),
    Field('materiaid', type='integer'),
    Field('detalle', type='string', length=25),
    migrate=migrate)

db.define_table('horas',
    Field('horaid', type='integer'),
    Field('hora', type='string', length=25),
    Field('desde', type='date'),
    Field('hasta', type='date'),
    Field('nivelid', type='integer'),
    migrate=migrate)

db.define_table('inasistencias',
    Field('inasistenciaid', type='id'),
    Field('inasistencia', type='string', length=50),
    Field('saf', type='boolean', default=False),
    Field('tarde', type='boolean', default=False),
    migrate=migrate)

db.define_table('inscripcionescomision',
    Field('inscripcionid', type='id'),
    Field('alumnoid', type='integer'),
    Field('comisionid', type='integer'),
    Field('alta', type='date'),
    Field('baja', type='date'),
    Field('condicion', type='string', length=1),
    migrate=migrate)

db.define_table('inscripcionesdivision',
    Field('inscripcionid', type='id'),
    Field('alumnoid', type='integer'),
    Field('divisionid', type='integer'),
    Field('alta', type='date'),
    Field('baja', type='date'),
    Field('condicion', type='string', length=1),
    migrate=migrate)

db.define_table('inscripcionesexamen',
    Field('inscripcionid', type='id'),
    Field('alumnoid', type='integer'),
    Field('examenid', type='integer'),
    Field('condicion', type='string', length=1),
    Field('alta', type='date'),
    Field('baja', type='date'),
    Field('confirmar', type='boolean', default=False),
    Field('valido', type='boolean', default=False),
    migrate=migrate)

db.define_table('materias',
    Field('materiaid', type='id'),
    Field('materia', type='string', length=100),
    Field('resumen', type='string', length=50),
    Field('cursoid', type='integer', default=0),
    Field('catedraid', type='integer', default=0),
    Field('codigo', type='string', length=5),
    Field('orden', type='integer', default=0),
    Field('optativa', type='boolean', default=False),
    Field('sexo', type='string', length=1),
    Field('analitico', type='string', length=250),
    Field('requerida', type='boolean', default=False),
    migrate=migrate)

db.define_table('niveles',
    Field('nivelid', type='id'),
    Field('nivel', type='string', length=50),
    Field('ciclo', type='integer', default=0),
    Field('tipo', type='integer', default=0),
    Field('personalid', type='integer', default=0),
    migrate=migrate)

db.define_table('notas',
    Field('notaid', type='id'),
    Field('alumnoid', type='integer', default=0),
    Field('materiaid', type='integer', default=0),
    Field('periodoid', type='integer', default=0),
    Field('calificacionid', type='integer', default=0),
    Field('nota', type='double', default=0),
    Field('descripcion', type='string', length=50),
    Field('establecimiento', type='string', length=50),
    Field('observaciones', type='text'),
    Field('fecha', type='date'),
    Field('libro', type='string', length=5),
    Field('folio', type='integer'),
    Field('alta', type='date', default=request.now),
    Field('id', type='integer', default=0),
    Field('__xmin', type='integer', default=0),
    Field('web', type='boolean', default=False),
    Field('turno', type='string', length=1),
    migrate=migrate)

db.define_table('periodos',
    Field('periodoid', type='id'),
    Field('periodo', type='string', length=50),
    Field('nivelid', type='integer', default=0),
    Field('cicloid', type='integer'),
    Field('mes', type='integer', default=0),
    Field('anio', type='integer', default=0),
    Field('trimestre', type='integer', default=0),
    Field('condicion', type='string', length=50),
    Field('cuatrimestre', type='integer', default=0),
    Field('semestre', type='integer', default=0),
    Field('orden', type='integer', default=0),
    Field('codigo', type='string', length=1),
    Field('inicio', type='date'),
    Field('cierre', type='date'),
    Field('tipo', type='integer', default=0),
    Field('dias', type='integer', default=0),
    Field('id', type='integer', default=0),
    Field('secuencia', type='integer'),
    Field('notaminima', type='double'),
    migrate=migrate)

db.define_table('personal',
    Field('personalid', type='integer', default=0),
    Field('nombre', type='string', length=50),
    Field('nro', type='string', length=50),
    Field('tipodoc', type='string', length=50),
    Field('nrodoc', type='integer', default=0),
    Field('pin', type='integer', default=0),
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
    Field('cargoid', type='integer', default=0),
    Field('seccionid', type='integer', default=0),
    primarykey=['personalid'],
    migrate=migrate)

db.define_table('planesestudio',
    Field('planestudioid', type='integer', default=0),
    Field('planestudio', type='string', length=50),
    Field('aprobadopor', type='string', length=250),
    Field('carreraid', type='integer', default=0),
    Field('desde', type='date'),
    Field('hasta', type='date'),
    primarykey=['planestudioid'],
    migrate=migrate)

db.define_table('profesores',
    Field('profesorid', type='id'),
    Field('personalid', type='integer'),
    Field('comisionid', type='integer', default=0),
    Field('cargoid', type='integer', default=2),
    Field('revistaid', type='integer'),
    Field('licencia', type='boolean', default=False),
    Field('detalle', type='string', length=50),
    Field('ref', type='string', length=1),
    Field('id', type='integer'),
    Field('__xmin', type='integer'),
    migrate=migrate)

db.define_table('revistas',
    Field('revistaid', type='id'),
    Field('revista', type='string', length=50),
    migrate=migrate)

db.define_table('sanciones',
    Field('sancionid', type='id'),
    Field('alumnoid', type='integer', default=0),
    Field('fecha', type='date'),
    Field('cantidad', type='double', default=0),
    Field('tipo', type='string', length=1),
    Field('detalle', type='text'),
    Field('parte', type='integer', default=0),
    migrate=migrate)

db.define_table('secciones',
    Field('seccionid', type='id'),
    Field('seccion', type='string', length=50),
    migrate=migrate)

db.define_table('situaciones',
    Field('situacionid', type='integer'),
    Field('situacion', type='string', length=30),
    primarykey=['situacionid'],
    migrate=migrate)

db.define_table('titulos',
    Field('tituloid', type='id'),
    Field('titulo', type='string', length=250),
    Field('planestudioid', type='integer'),
    Field('carreraid', type='integer'),
    Field('cursoid', type='integer'),
    migrate=migrate)

