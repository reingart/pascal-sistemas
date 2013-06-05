# coding: utf8

db.define_table('tramites',
    Field('tramiteid', type='integer'),
    Field('descripcion', type='string', default=""),
    Field('arancelado', type='boolean', default=False),
    primarykey=["tramiteid"],
    )

db.define_table('ubicaciones',
    Field('ubicacionid', type='integer'),
    Field('descripcion', type='string', default=""),
    Field('telefono', type='string', default=""),
    Field('email', type='string', default=""),
    primarykey=["ubicacionid"],
    )
    
db.define_table('estados',
    Field('estadoid', type='integer'),
    Field('descripcion', type='string', default=""),
    Field('activo', type='boolean', default=False),
    primarykey=["estadoid"],
    )
    
db.define_table('expedientes',
    Field('expedienteid', type='integer'),
    Field("alumnoid", db.alumnos),
    Field("mensaje", "text"),
    primarykey=["expedienteid"],
    )

db.define_table("seguimientos",
    Field('seguimientoid', type='integer'),
    Field("expedienteid", db.expedientes),
    Field("personalid", db.personal),  # directivo
    Field('fecha', type='date', length=200,label=T('Fecha')),
    Field("comentario", "text"),
    primarykey=["seguimientoid"],
    )
