# controlador de ejemplo para carga inicial / consulta de notas por alumno

def index():
    # armo un formulario para buscar alumno por su dni
    form = SQLFORM.factory(
        Field("dni", "integer"),
        )
    if form.accepts(request.vars, session):
        # buscar el alumno
        q = db.alumnos.dni == form.vars.dni
        alumno = db(q).select().first()
        if alumno:
            # encontrado, redirigo a cargar notas por 
            redirect(URL(f=cargar, vars={'alumnoid': alumno.alumnoid}))
        else:
            response.flash = "Alumno no encontrado"
    response.view = "generic.html"  # HACER una vista de verdad
    return {'form': form}
    
def cargar():
    # obtengo el parámetro pasado por variable en la url
    alumnoid = request.vars['alumnoid']
    # busco el alumno
    alumno = db.alumnos[alumnoid]
    # obtengo la carrera / plan de estudio
    #carreraid = alumno.carreraid ...
    
    # busco las materias:
    q = db.materias.materiaid>0  # HACER: filtrar por carrera/plan de estudio
    orden = db.materias.materiaid    # HACER: mejorar el orden (por ej. curso)
    materias = db(q).select(orderby=orden)
    
    # obtengo las notas
    q = db.notas.alumnoid == alumnoid
    q &= db.notas.calificacionid == 5  # filtrar solo finales
    #q &= db.notas.periodoid == ...     # HACER: filtrar otros campos
    notas = db(q).select()
    # armo un diccionario para manipularlas más facilmente {materiaid: nota}
    notas = dict([(nota.materiaid, nota.nota) for nota in notas])

    # encabezado de la tabla:
    filas = [TR(
                TH("ID"),
                TH("Materia"),
                TH("Nota"),
            )]
    # recorro las materias armando la tabla
    for materia in materias:
        filas.extend([
            TR(
                TD(materia.materiaid),
                TD(materia.nombre), 
                TD(INPUT(requires=IS_EMPTY_OR(IS_INT_IN_RANGE(0,10)),
                              _name='nota.%s' % (materia.materiaid), 
                              _value=notas.get((materia.materiaid), ""), 
                              _size="3", _style="width: 30px;")
                )
            )])
    filas.append(TR(TD(INPUT(_type="submit"), _colspan=3, 
                              _style="text-align: center;")))
    
    # armo el formulario
    form = FORM(TABLE(filas, _class="compacta", _width="100%", 
                      _cellpadding="0", _cellspacing="0", 
                      _style="padding: 0; margin: 0;"), 
                _style="padding: 0; margin: 0;")

    # valido el formulario:
    if form.accepts(request.vars, session):
        # recorro los campos del formulario y guardo:
        for var in form.vars.keys():
            if "." in var:
                # divido el nombre del campo (ver INPUT)
                n, materiaid = var.split(".")  
                # obtengo el valor ingresado para este campo
                val = form.vars[var]
                # busco el registro actual para actualizarlo (si existe)
                q  = db.notas.materiaid == materiaid
                q &= db.notas.alumnoid == alumnoid
                q &= db.notas.calificacionid == 5
                # actualizao el registro (si no existe devuelve 0 filas)
                actualizados = db(q).update(nota=val)
                if not actualizados:                                    
                    # inserto el registro ya que no existe
                    db.notas.insert(
                        alumnoid=alumnoid,
                        materiaid=materiaid,
                        calificacionid=5,    # final
                        nota=val,
                        # HACER: libro y folio, otros datos 
                        )
        # mesnaje para el usuario y redirijo al listado
        session.flash = "Datos aceptados!"
        redirect(URL(f="index"))
    elif form.errors:
        response.flash = 'revise los errores!'
   
    response.view = "generic.html"  # HACER una vista de verdad
    return dict(form=form)
