# coding: utf8
# try something like
def index(): return dict(message="hello from listar_tramites.py")


def index():
    # form buscar tramites
    form = SQLFORM.factory(
        Field("dni", "integer"),
        )
    if form.accepts(request.vars, session):
        # buscar el tramite del alumno
        q = db.tramites.alumnoid == db.alumnos.alumnoid
        q &= db.alumnos.dni == form.vars.dni
        tramites = db(q).select().first()
    else:
        tramites = []  # no completo form
    response.view = "generic.html"  
    return {'form': form, 'tramites': tramites}
