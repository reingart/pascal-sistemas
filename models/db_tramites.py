# coding: utf8

migrate = True

db.define_table('tramites',
    Field('tramiteid', type='id'),
    Field('descripcion', type='string', default=""),
    Field('arancelado', type='boolean', default=False),
<<<<<<< local
    format= "%(tramiteid)s [%('descripcion')s]",
    migrate=migrate)
=======
    migrate= migrate)
>>>>>>> other

db.define_table('ubicaciones',
    Field('ubicacionid', type='id'),
    Field('descripcion', type='string', default=""),
    Field('telefono', type='string', default=""),
    Field('email', type='string', default=""),
<<<<<<< local
    format= "%(ubicacionid)s [%('descripcion')s]",
    migrate=migrate)
=======
    migrate= migrate)
>>>>>>> other
    
db.define_table('estados',
    Field('estadoid', type='id'),
    Field('descripcion', type='string', default=""),
    Field('activo', type='boolean', default=False),
<<<<<<< local
    format= "%(estadoid)s [%('descripcion')s]",
    migrate=migrate)

=======
    migrate= migrate)
>>>>>>> other
    
db.define_table('expedientes',
    Field('expedienteid', type='id'),
    Field("alumnoid", db.alumnos),
    Field("mensaje", "text"),
<<<<<<< local
    format= "%(expedienteid)s [%('mensaje')s]",
    migrate=migrate)

=======
    migrate= migrate)
>>>>>>> other

db.define_table("seguimientos",
    Field('seguimientoid', type='id'),
    Field("expedienteid", db.expedientes),
    Field("personalid", db.personal),  # directivo
    Field('fecha', type='date', length=200,label=T('Fecha')),
    Field("comentario", "text"),
<<<<<<< local
    format= "%(seguimientoid)s [%('personalid')s]",
    migrate=migrate)
=======
    migrate= migrate)
>>>>>>> other
