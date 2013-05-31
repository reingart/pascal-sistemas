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
    #Field("alumnoid", db.alumno),
    Field("mensaje", "text"),
    Field('nombre', type='string', length=50,label=T('Nombre')),
    )

db.define_table("seguimientos",
    Field("expedienteid", db.expedientes),
    #Field("personalid", db.personal),  # directivo
    Field('fecha', type='date', length=200,label=T('Fecha')),
    Field("comentario", "text"),
    )
