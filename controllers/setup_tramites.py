def cargar_tramites():
    db(db.tramites.tramiteid>0).delete()  

    # Insertamos los tramites requeridos
    
    db.tramites.insert(tramiteid="1",descripcion="Certificado de Alumno Regular", arancelado="true")
    db.tramites.insert(tramiteid="2",descripcion="Certificado de Titulo en Tramite", arancelado="true")
    db.tramites.insert(tramiteid="3",descripcion="Certificado de Reincorporacion", arancelado="true")
    db.tramites.insert(tramiteid="4",descripcion="Certificado de Materias Aprobadas", arancelado="true")
    
    
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
   
    return {'filas': db(db.tramites.tramiteid>0).select()}


def cargar_ubicaciones():
    db(db.ubicaciones.ubicacionid>0).delete()  

    # Insertamos las ubicaciones requeridas
    
    db.ubicaciones.insert(ubicacionid="1",descripcion="Secretaria Academica", telefono="456783",email="jose@hotmail.com")
    db.ubicaciones.insert(ubicacionid="2",descripcion="Secretaría Administrativa", telefono="439827",email="juan@hotmail.com")
    db.ubicaciones.insert(ubicacionid="3",descripcion="Direccion", telefono="459382",email="mario@hotmail.com")
    db.ubicaciones.insert(ubicacionid="4",descripcion="Jefatura de Inspeccion", telefono="438297",email="martin@hotmail.com")
    db.ubicaciones.insert(ubicacionid="5",descripcion="Dirección Provincial de ...", telefono="438297",email="martin@hotmail.com")
    db.ubicaciones.insert(ubicacionid="6",descripcion="Ministerio de Educación", telefono="438297",email="martin@hotmail.com")
    
    
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
   
    return {'filas': db(db.ubicaciones.ubicacionid>0).select()}
    

    
     
def cargar_expedientes():
    
    db(db.expedientes.expedienteid>0).delete()  

    # Insertamos los expedientes requeridos
    
    db.expedientes.insert(alumnoid=1, tramiteid=1, estadoid=1, mensaje="Certificado de Alumno Regular")
    db.expedientes.insert(alumnoid=1, tramiteid=2, estadoid=2, mensaje="Certificado de Titulo en Tramite")
    db.expedientes.insert(alumnoid=1, tramiteid=3, estadoid=3, mensaje="Certificado de Reincorporacion")
    db.expedientes.insert(alumnoid=1, tramiteid=4, estadoid=4, mensaje="Certificado de Materias Aprobadas")
    
    
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
   
    return {'filas': db(db.expedientes.expedienteid>0).select()}
    
    

def cargar_estados():
    
    db(db.estados.estadoid>0).delete()  

    # Insertamos los estados requeridos
    
    db.estados.insert(estadoid=1, descripcion="iniciado", activo="true")
    db.estados.insert(estadoid=2, descripcion="confeccionado", activo="true")
    db.estados.insert(estadoid=3, descripcion="autenticado", activo="true")
    db.estados.insert(estadoid=4, descripcion="listo para entregar", activo="true")
    db.estados.insert(estadoid=5, descripcion="finalizado", activo="true")
    
    
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
   
    return {'filas': db(db.estados.estadoid>0).select()}
    

def cargar_seguimientos():
    
    db(db.seguimientos.seguimientoid>0).delete()  

    # Insertamos los seguimientos requeridos
    
    db.seguimientos.insert(seguimientoid=1, expedienteid=1, personalid=2, ubicacionid=1, fecha="2013-02-04", comentario="administrador del sistema")
    db.seguimientos.insert(seguimientoid=2, expedienteid=2, personalid=3, ubicacionid=2, fecha="2013-03-02", comentario="administrador del sistema")
    db.seguimientos.insert(seguimientoid=3, expedienteid=3, personalid=4, ubicacionid=3, fecha="2013-02-02", comentario="administrador del sistema")
    db.seguimientos.insert(seguimientoid=4, expedienteid=4, personalid=5, ubicacionid=4, fecha="2013-03-12", comentario="administrador del sistema")
    
    
    
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
   
    return {'filas': db(db.seguimientos.seguimientoid>0).select()}
