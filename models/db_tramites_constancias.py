# coding: utf8

db.define_table('constancia_modelo',
    Field('modeloid', type='id'),
    Field('desccripcion', type='string', length=200, default="certificado alumno regular", comment=T('tipo de contancia')),
    Field('plantilla', type='text', comment=T('texto base')),
    format= "%(modeloid)s [%(descripcion)s]",
    migrate=migrate)


db.define_table('constancia',
    Field('constanciaid', type='id'),
    Field("modeloid", db.constancia_modelo),
    Field('alumnoid', db.alumnos, label=T('Alumno')),
    Field('materias', type='text', length=200,label=T('porcentaje de materias aprobadas')),
    Field('texto', type='string', length=500, label=T('tipo de certificado')),
    Field('fechade_inicio', type='date', length=200,label=T('Fecha De Inicio')),
    Field('fechade_entrega', type='date', length=50, label=T('Fecha De Entrega')),   
    format= "%(constanciaid)s [%(materias)s]", 
    migrate=migrate)
