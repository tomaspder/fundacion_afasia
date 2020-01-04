# -*- coding: utf-8 -*-
from bottle import run, route, template, request, static_file, post, get
import fieldscheck
import querys_db

@route('/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='.')

@route("/")
def index():

    return template('index.html')

@get("/formulario")
def formulario():
    return template('formulario.html')

@get("opcion_crusos.html")
def opcion_cursos():
    return template('opcion_cursos.html')

@post('/')
def getUserInfo():
    userData = {}
    nombre = request.forms.get('nombre')
    apellido = request.forms.get('sname')
    dni = request.forms.get('dni')
    fecha = request.forms.get('fecha')
    usuario = request.forms.get('usuario')
    password = request.forms.get('psw')
    email = request.forms.get('email')
    domicilio = request.forms.get('domicilio')
    diagnostico = request.forms.get('diagnostico')
    userData = {'nombre':nombre,
                "apellido":apellido,
                "dni":dni,
                "fechanac":fecha,
                "usuario":usuario,
                "password":password,
                "email":email,
                "domicilio":domicilio,
                "diagnostico":diagnostico}

    if fieldscheck.validar_campos(userData):
        querys_db.agregar_alumno(userData)
        lista = querys_db.devuelve_lista("cursos")

        return template("opcion_cursos.html", lista=lista)
    else:
        return "<script>alert('Ha ingresado información erronea en algún campo. Intente nuevamente.')</script>", template('formulario.html')


@route("/opcion_cursos.html", method='get')
def opcion_cursos():
    lista = querys_db.devuelve_lista("cursos")
    inscrip = request.GET.get("id_curso_incrip")
    valores = (inscrip, querys_db.ultimo_inscripto())
    ejec_inscrip = querys_db.inscribir_alumno(valores)
    return template("opcion_cursos.html", lista=lista)


@post('/verdatos.html', method='POST')
def verdatos():
    response = request.POST.get('selector')
    if response == '1':
        alumnos = querys_db.devuelve_lista('alumnos')
        return template('verdatos.html', lista = alumnos, valor = 1)
    if response == '2':
        cursos = querys_db.devuelve_lista('cursos')
        return template('verdatos.html', lista = cursos, valor = 2)
    if response == '3':
        profesionales = querys_db.devuelve_lista('profesionales')
        return template('verdatos.html', lista = profesionales, valor = 3)


run(host='localhost', port=8080, debug=True, reloader=True)

