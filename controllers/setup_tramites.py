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
