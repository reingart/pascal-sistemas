# coding: utf8

db.define_table('tramites',
    Field('tramiteid', type='id'),
    Field('descripcion', type='string', default=""),
    Field('arancelado', type='boolean', default=False),
    )

db.define_table('ubicaciones',
    Field('ubicacionid', type='id'),
    Field('descripcion', type='string', default=""),
    Field('telefono', type='string', default=""),
    Field('email', type='string', default=""),
    )
    
db.define_table('estados',
    Field('estadoid', type='id'),
    Field('descripcion', type='string', default=""),
    Field('activo', type='boolean', default=False),
    )
    
db.define_table('expedientes',
    Field('expedienteid', type='id'),
    Field("alumnoid", db.alumnos.id),
    Field("mensaje", "text"),
    )

db.define_table("seguimientos",
    Field('seguimientoid', type='id'),
    Field("expedienteid", db.expedientes.id),
    Field("personalid", db.personal.id),  # directivo
    Field('fecha', type='date', length=200,label=T('Fecha')),
    Field("comentario", "text"),
    )
