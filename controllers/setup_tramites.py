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
    
    db.ubicaciones.insert(ubicacionid="1",descripcion="Certificado de Alumno Regular", telefono="456783",email="jose@hotmail.com")
    db.ubicaciones.insert(ubicacionid="2",descripcion="Certificado de Titulo en Tramite", telefono="439827",email="juan@hotmail.com")
    db.ubicaciones.insert(ubicacionid="3",descripcion="Certificado de Reincorporacion", telefono="459382",email="mario@hotmail.com")
    db.ubicaciones.insert(ubicacionid="4",descripcion="Certificado de Materias Aprobadas", telefono="438297",email="martin@hotmail.com")
    
    
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
   
    return {'filas': db(db.ubicaciones.ubicacionid>0).select()}
    

    
     
def cargar_expedientes():
    
    db(db.expedientes.expedienteid>0).delete()  

    # Insertamos los expedientes requeridos
    
    db.expedientes.insert(alumnoid=1, tramiteid=1, estadoid=1, mensaje="Certificado de Alumno Regular")
    db.expedientes.insert(alumnoid=1, tramiteid=1, estadoid=1, mensaje="Certificado de Titulo en Tramite")
    db.expedientes.insert(alumnoid=1, tramiteid=1, estadoid=1, mensaje="Certificado de Reincorporacion")
    db.expedientes.insert(alumnoid=1, tramiteid=1, estadoid=1, mensaje="Certificado de Materias Aprobadas")
    
    
    response.view="generic.html"
    
    # Devuelvo una consulta del contenido de la tabla
   
    return {'filas': db(db.expedientes.expedienteid>0).select()}
