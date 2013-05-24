def cargar_docentes():
    # Antes de insertar borramos los registros de la tabla
    db(db.personal.personalid>0).delete()  

    # Insertamos los nombres de los profesores
    db.personal.insert(personalid=2, nombre="Reingart Mariano",dni=111111)
    db.personal.insert(personalid=3, nombre="Amarilla Hector",dni=434343)
    db.personal.insert(personalid=4, nombre="Vargas Claudia",dni=4545)
    db.personal.insert(personalid=5, nombre="Bravo Angel",dni=9897)
    db.personal.insert(personalid=6, nombre="Aguirre Elena",dni=57865)
    db.personal.insert(personalid=7, nombre="Media Luz",dni=754645657)
    db.personal.insert(personalid=8, nombre="Gonzalez Jose",dni=79588)
    db.personal.insert(personalid=9, nombre="Profe de Ingles",dni=545353)
    db.personal.insert(personalid=10, nombre="Profe de Historia",dni=6465464)

    response.view="generic.html"
    # Devuelvo una consulta del contenido de la tabla
    return {'filas': db(db.personal.personalid>0).select()}
