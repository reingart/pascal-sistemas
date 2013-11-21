# coding: utf8
# try something like
#como hacer funcar esto

@auth.requires_login()
def ingreso():
    db.Personal.user_id.default= auth.user_id
    subtitulo= T ('Complete el formulario por favor...')
    form=SQLFORM(db.personal)
    if form.accepts(request.vars,session):
        grupo_id = db(db.auth_group.role=='Personal').select(db.auth_group.id)
        for x in grupo_id:
            grupo=x.id
        db.auth_membership.insert(user_id=auth.user_id, group_id=grupo)
        #agrego al docente y su id de registro en el grupo docentes
        response.flash='Usted fue agregado como docente...'
    elif form.errors:
        response.flash='Hay errores en el formulario'
    else:
        response.flash='Por favor, complete el formulario'

    return dict (form=form, sub=subtitulo)



def busqueda():
    # armo un formulario para buscar alumno por su dni y nombre
    form = SQLFORM.factory(
        Field("dni", "integer"),
        Field("nombre", "string"),
        )
    q= db.profesores.id>0
    if form.accepts(request.vars, session):
        # buscar el docente
        if form.vars.dni:
            q &= db.personal.dni == form.vars.dni
        if form.vars.nombre:
            q &= db.personal.nombre.contains(form.vars.nombre)
        docente = db(q).select().first()


        if docente:
            # encontrado, redirigo a cargar notas por
            redirect(URL(f=index, vars={'personalid': docente.personal.personalid}))

        else:
            response.flash = "docente no encontrado"
    #response.view = "generic.html"  # HACER una vista de verdad
    return dict (form = form)

#@auth.requires_login()
#@auth.requires_membership(role='personal')
def index():
    if request.vars:
        # si me pasan en la URL el docente, lo filtro
        q=db.personal.personalid == request.vars['personalid']

        redirect(URL(f=ficha, vars={'personalid': docente.personal.personalid}))


    else:
        # sino, busco todos los docentes
        q=db.personal.personalid>0
    docentes=db(q).select(orderby=db.personal.nombre)
    return{'docentes':docentes}

#@auth.requires_login()
#@auth.requires_membership(role='personal')

# requiere que el logueado pertenezca al rol de personal  y/o doncente

def alumnoXcomision():
    comisionid=request.args[0]
    #inasistenciaid=request.args[0]


    # si me pasan en la URL el docente, lo filtro
    q = db.comisiones.comisionid == comisionid
    #q = db.inasistencias.inasistenciaid == inasistenciaid

    # selecciono los alumnos que estan en la inscripcion en donde entre
    q &=db.alumnos.alumnoid == db.inscripcionescomision.alumnoid


    # Busca las comisiones que coincidan
    q &= db.comisiones.comisionid == db.inscripcionescomision.comisionid

    # Ejecuto el sql donde vienen los alumnos por comision
    alumnos=db(q).select(db.alumnos.ALL, orderby=db.alumnos.nombre)
    inasistencias=db(db.inasistencias.id>0).select(db.inasistencias.ALL)

     #cuando hago click en el boton guardar
    if request.vars.grabar=="GUARDAR":

        # en _name tenemos el nombre del checkbox
        fecha = request.vars.fecha
        for alumno in alumnos:
                alumno_id = alumno.alumnoid
                comision_id = comisionid
                inasistencia_id = 1
                # obtenemos los valores de los campos en el formulario para este alumno
                falta = request.vars["falta_%s" % alumno_id]
                inasistencia_id = request.vars["tipo_%s" % alumno_id]

                # si el valor es on  en el checkbox insertamos los datos del alumno en la tabla faltas.
                if falta == "on":
                    db.faltas.insert(alumnoid= alumno_id, comisionid= comision_id,inasistenciaid=inasistencia_id,
                    fecha=fecha,cantidad=1)

    return {'alumnos':alumnos, 'inasistencias':inasistencias}




def horarios():
    q=db.horarios.horarioid>0
    horarios=db(q).select()
    return{'horarios':horarios}

#@auth.requires_login()
#@auth.requires_membership(role='personal')

def finales():


    q =db.inscripcionesexamen.alumnoid==db.alumnos.alumnoid


    # Busca las comisiones que coincidan
    q &= db.inscripcionesexamen.condicion == "Regular"
    #q &= db.inscripcionescomision.comisionid ==  db.comisiones.comisionid
    q &= db.inscripcionesexamen.examenid == db.examenes.examenid
    q &= db.examenes.materiaid == db.materias.materiaid

    alumnos=db(q).select(db.alumnos.ALL, orderby=db.alumnos.nombre , distinct= True)
    i=0
    a=0
    if request.vars.grabar=="GUARDAR":

        for alumno in alumnos:

            fecha= request.vars.fecha
            alumno_id= alumno.alumnoid
            #materia_id = alumno.materiaid
           # calificacion_id = 1
            nota = int(request.vars.nota[i])
            libro = request.vars.libro
            folio =request.vars.folio
            establecimiento= "I.S.T.B.P"
            a=5

            db.notas.insert(nota=nota ,fecha=fecha,alumnoid=alumno_id,libro=libro,folio=folio, establecimiento=establecimiento)
            i= i+1

    comisiones = db(q).select(db.comisiones.ALL, distinct=True)

    return{'alumnos':alumnos,'a':a, 'comisiones':comisiones}

#@auth.requires_login()
#@auth.requires_membership(role='personal')
def listamaterias():
    q = db.examenes.materiaid == db.materias.materiaid
    q &= db.examenes.periodoid == db.periodos.periodoid


    examenes=db(q).select(db.materias.nombre, db.periodos.descripcion, db.examenes.fecha,db.examenes.hora)
    tablaFinal=[]

    i=0

    form2=''

    form=FORM(TABLE(TR("Nombre:",INPUT(_type="text",_name="Nombre",requires=IS_NOT_EMPTY())),TR("",INPUT(_type="submit",_value="Buscar"))))

    if form.accepts(request.vars,session):
        if len(db(db.materias.materiaid==db.examenes.materiaid)&(db.periodos.periodoid==db.examenes.periodoid)&(db.materias.nombre==form.vars.Nombre.upper()).select(db.materias.nombre, db.examenes.hora, db.periodos.descripcion,db.examenes.fecha))==0:

            form.errors.codigo="El nombre ingresado no esta¡ en la base de datos"


        else:



            listado = db(db.materias.materiaid==db.examenes.materiaid)&(db.periodos.periodoid==db.examenes.periodoid)&(db.materias.nombre)==form.vars.Nombre.upper().select(db.materias.nombre, db.examenes.hora, db.periodos.descripcion,db.examenes.fecha)

            for x in listado:

                i=i+1

            lista=[]



            lista.append(TABLE(TR(

            TH('Materia',_style='width:200px; color:#000; background: #99f; border: 2px solid #cdcdcd'),

            TH('Periodo',_style='width:200px; color:#000; background: #99f; border: 2px solid #cdcdcd'),

            TH('Fecha',_style='width:200px; color:#000; background: #99f; border: 2px solid #cdcdcd'),

            TH('Hora',_style='width:200px; color:#000; background: #99f; border: 2px solid #cdcdcd'),


            TFOOT(TR(TH('Total: ',_style='width:20px; color:#000; background: #99f; border: 2px solid #cdcdcd'),

            TH(i,' Clientes',_style='width:120px; color:#000; background: #99f; border: 2px solid #cdcdcd'))),



            *[TR(

            TD(rows.nombre,_style='width:200px; color:#000; background: #eef; border: 2px solid #cdcdcd'),

            TD(rows.descripcion,_style='width:200px; color:#000; background: #eef; border: 2px solid #cdcdcd'),

            TD(rows.fecha,_style='width:200px; color:#000; background: #eef; border: 2px solid #cdcdcd'),

            TD(rows.hora,_style='width:200px; color:#000; background: #eef; border: 2px solid #cdcdcd'),

            )

            for rows in listado]),))





            tablaFinal = DIV(lista)


    elif form.errors:

       response.flash = 'Hay un error en el formulario'

    else:

       response.flash = 'Por favor, complete el Formulario'



    return dict (examenes= examenes,form=form, tabla=tablaFinal)

def libres():

    q =db.inscripcionesexamen.alumnoid==db.alumnos.alumnoid


    # Busca las comisiones que coincidan
    q &= db.inscripcionesexamen.condicion == "Libre"
    #q &= db.inscripcionescomision.comisionid ==  db.comisiones.comisionid
    q &= db.inscripcionesexamen.examenid == db.examenes.examenid
    q &= db.examenes.materiaid == db.materias.materiaid

    alumnos=db(q).select(db.alumnos.ALL, orderby=db.alumnos.nombre , distinct= True)
    i=0
    a=0
    if request.vars.grabar=="GUARDAR":

        for alumno in alumnos:

            fecha= request.vars.fecha
            alumno_id= alumno.alumnoid
            #materia_id = alumno.materiaid
           # calificacion_id = 1
            nota = int(request.vars.nota[i])
            libro = request.vars.libro
            folio =request.vars.folio
            establecimiento= "I.S.T.B.P"
            a=5

            db.notas.insert(nota=nota ,fecha=fecha,alumnoid=alumno_id,libro=libro,folio=folio, establecimiento=establecimiento)
            i= i+1

    comisiones = db(q).select(db.comisiones.ALL, distinct=True)

    return{'alumnos':alumnos,'a':a, 'comisiones':comisiones}
def elegir():
    ""
    return{}
#@auth.requires_login()
#@auth.requires_membership(role='personal')
def parciales():
    ""
    return{}

#@auth.requires_login()
#@auth.requires_membership(role='personal')
def apuntes():

    if request.vars.GRABAR=="GUARDAR":
        fecha = request.vars.fecha
        descripcion =  request.vars.descripcion
        db.apuntes.insert(fecha=fecha, descripcion=descripcion)

    return{}

#@auth.requires_login()
#@auth.requires_membership(role='personal')
def recursos():
    ""
    return{}


#@auth.requires_login()
#@auth.requires_membership(role='personal')
def unidad():
    ""
    return{}

#@auth.requires_login()
#@auth.requires_membership(role='personal')
def ficha():
    # obtengo el id de la url (primer argumento por posicion):

    personalid = request.args[0]
    horarioid = request.args[0]
    horaid = request.args[0]



    # obtengo el registro del docente
    horario = db.horarios[horarioid]


    # obtengo el registro del docente
    docente = db.personal[personalid]
    hora = db.horas[horaid]

    q = db.comisiones.personalid == personalid
    comisiones = db(q).select()


    q &= db.horarios.horarioid == horarioid
    horarios = db(q).select(db.horarios.ALL)
    q &= db.horas.horaid == horaid
    horas = db(q).select(db.horas.ALL, distinct=True)


    return {'docente':docente, 'comisiones':comisiones, 'horario':horario, 'horarios':horarios, 'horas':horas,'hora':hora}


#@auth.requires_login()
#@auth.requires_membership(role='personal')
def altas():
    db.personal.user_id.default= auth.user_id
    subtitulo= T ('Complete el formulario por favor...')
    form=SQLFORM(db.personal)
    if form.accepts(request.vars,session):
        response.flash='Usted fue agregado como docente...'
    elif form.errors:
        response.flash='Hay errores en el formulario!'
    else:
        response.flash='Por favor, complete el formulario!'
    return dict (form=form, sub=subtitulo)

def modificar():
    ""
    return{}
def listarfinales():

    i=0




    proyectos = db().select (db.notas.ALL, distinct = True)

    for x in proyectos:

        i=i+1

    lista=[]

    #se arma una tabla con tres campos: CODIGO, NOMBRE y ACCION

    #El pie de la tabla contiene dos celdas: Total y X Carreras donde X es la cantidad de carreras que muestre la tabla

    lista.append(TABLE(TR(
    TH('Folio',_style='width:20px; color:#000; background: #99f; border: 2px solid #cdcdcd'),

    TH('Libro',_style='width:20px; color:#000; background: #99f; border: 2px solid #cdcdcd'),

    TH('Nota',_style='width:20px; color:#000; background: #99f; border: 2px solid #cdcdcd'),

     TFOOT(TR(TH('Total de proyectos: ',_style='width:20px; color:#000; background: #99f; border: 2px solid #cdcdcd'),

    TH(i,' Proyectos',_style='width:120px; color:#000; background: #99f; border: 2px solid #cdcdcd'))),



    #se agregan las celdas que vinculan los campos "id" y "nombre" contenidos en rows, referenciado mas abajo en el for

    *[TR(TD(rows.folio,_style='width:200px; color:#000; background: #eef; border: 2px solid #cdcdcd'),

    TD(rows.libro,_style='width:200px; color:#000; background: #eef; border: 2px solid #cdcdcd'),

    # SE AGREGA UNA CELDA PARA LOS HIPERVINCULOS Ver Y Modificar que enlazan con

    #los controladores muestraCarrera y modificarCarrera respectivamente:

    TD(rows.nota,_style='width:200px; color:#000; background: #eef; border: 2px solid #cdcdcd'),

    TD(A('Ver',_href=URL(r=request, f='muestrafinal', args=[rows.id]) ) ,' - ',  A('Modificar',_href=URL(r=request, f='modificarfinal',

    args=[rows.notaid]) ) , _style='width:200px; color:#000; background: #eef; border: 2px solid #cdcdcd' ) )



    for rows in proyectos]),))

    #se conforma la Tabla resultado:

    tablaFinal = DIV(lista)

    #se retorna la tabla a la vista:

    return dict (t=tablaFinal)


def modificarfinal():

     #realiza la consulta. request.args(0) contiene el 'id' seleccionado en 'listarfinales viene como parametro

    finalSeleccionado = db(db.notas.id==request.args(0)).select()

    #guarda el id en la variable 'idCarreraSeleccionada'

    idfinalSeleccionado = finalSeleccionado[0]

    #crea un formulario para ser mostrado en la vista solo con los campos que permito que se modifiquen:

    form = SQLFORM(db.notas, idfinalSeleccionado, deletable=False,

                    fields=['notaid','folio','libro','nota'],

                    

                    labels={'notaid':'notaid', 'folio':'folio'},

                    submit_button='Grabar')

    #si el formulario es aceptado:

    if form.accepts(request.vars, session):

        session.flash = "ADVERTENCIA: Los datos modificados se guardaran en la Base de Datos"

        #redirecciona al controlador principal

        redirect(URL(r=request, f='listarfinales'))                

    #retorna el formulario a la vista

    return dict(form=form)


def muestrafinal():

    finalSeleccionado= db(db.notas.id==request.args(0)).select()

    idfinalSeleccionado = finalSeleccionado[0]

    #la diferencia con el controlador anterior es esta sentencia

    #que hace que el campo 'nombre' no pueda ser modificado en la vista

    
    db.notas.folio.writable = False

    db.notas.libro.writable = False

    db.notas.nota.writable = False

   
    form = SQLFORM(db.notas, idfinalSeleccionado, writable=False,

                    fields=['folio','libro','nota'],

                    labels={'folio':'folio','libro':'libro', 'nota':'nota'},

                    submit_button='Volver')#el boton se llama Volver

    if form.accepts(request.vars, session):

        session.flash = "ADVERTENCIA: Los datos modificados se guardaran en la Base de Datos"

        redirect(URL(r=request, f='listarfinales'))#redirecciona al controlador principal                

                    

    return dict(form=form)
