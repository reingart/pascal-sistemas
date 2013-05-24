# coding: utf8

db.define_table('tramites',
    Field('Tramiteid', type='id'),
    Field('nombre', type='string', length=50,label=T('Nombre')),
    Field('fechadeinicio', type='date', length=200,label=T('Fecha De Inicio')),
    Field('fechadeentrega', type='date', length=50, label=T('Fecha De Entrega')),
    )
