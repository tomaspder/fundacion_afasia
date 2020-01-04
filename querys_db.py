import mysql.connector

con = mysql.connector.connect(user='root', password='', host='127.0.0.1', database='FundacionAfasiaDB')
mycursor = con.cursor(buffered=True)


#Muestra todas las listas

def devuelve_lista(valor):
    qyr = "SELECT * FROM {};".format(valor)
    mycursor.execute(qyr)
    cc = mycursor.fetchall()
    return list(cc)

#Agrega para cada entidad

#mostrar nombres de cursos
def devuelve_cursos():
    qyr = "SELECT nombre FROM cursos;"
    mycursor.execute(qyr)
    cc = mycursor.fetchall()
    return list(cc)

def agregar_alumno(valores):

    qry = '''INSERT INTO `alumnos` (`id`,`nombre`, `apellido`, `usuario`, `password`, `email`, `dni`, `domicilio`, `fechanac`, `diagnos`) 
        VALUES (NULL, '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}');               
              '''.format(valores['nombre'],
                         valores['apellido'],
                         valores['usuario'],
                         valores['password'],
                         valores['email'],
                         valores['dni'],
                         valores['domicilio'],
                         valores['fechanac'],
                         valores['diagnostico'])

    mycursor.execute(qry)
    con.commit()

def agregar_asistentes(valores):

    qry = '''INSERT INTO `asistentes` (`id`, `nombre`, `apellido`, `tipoMiembro`, `dni`, `email`, `domicilio`) 
       VALUES (NULL, '{}', '{}', '{}', '{}', '{}', '{}');              
              '''.format(valores['nombre'],
                         valores['apellido'],
                         valores['tipoMiembro'],
                         valores['dni'],
                         valores['email'],
                         valores['domicilio'])

    mycursor.execute(qry)
    con.commit()

def agregar_profesionales(valores):
    qry = '''INSERT INTO `profesionales` (`id`, `nombre`, `apellido`, `domicilio`, `dni`, `email`, `profesion`) 
        VALUES (NULL, '{}', '{}', '{}', '{}', '{}', '{}');        
                  '''.format(valores['nombre'],
                             valores['apellido'],
                             valores['domicilio'],
                             valores['dni'],
                             valores['email'],
                             valores['profesion'])
    # print(qry)
    mycursor.execute(qry)
    con.commit()

def agregar_curso(valores):
    qry = '''INSERT INTO `cursos` (`id`, `nombre`, `id_profesor`, `id_categoria`, `turno`, `descripcion`) 
        VALUES (NULL, '{}', '{}', '{}', '{}', '{}');
                '''.format(valores['nombre'],
                           valores['id_profesor'],
                           valores['id_categoria'],
                           valores['turno'],
                           valores['descripcion'])

    mycursor.execute(qry)
    con.commit()

#Borrar universal

def borrar_universal(valor):

    qry = '''DELETE FROM {} WHERE id = {}'''.format(valor["entidad"],
                                                      valor["id"],)
    mycursor.execute(qry)
    con.commit()

#Modificar para cada entidad

def modific_alumnos(valores):
    qry = """UPDATE `alumnos` SET `nombre` = '{}', `apellido` = '{}', `usuario` = '{}', `password` = '{}',
     `email` = '{}', `dni` = '{}', `domicilio` = '{}', `fechanac` = '{}', `diagnos` = '{}' 
      WHERE `alumnos`.`id` = {}; """.format(valores['nombre'],
                                          valores['apellido'],
                                          valores['usuario'],
                                          valores['password'],
                                          valores['email'],
                                          valores['dni'],
                                          valores['domicilio'],
                                          valores['fechanac'],
                                          valores['diagnos'],
                                          int(valores["id"]))
    mycursor.execute(qry)
    con.commit()


def modific_asistentes(valores):
    qry = """UPDATE `asistentes` SET `nombre` = '{}', `apellido` = '{}', `dni` = '{}', `email` = '{}', `domicilio` = '{}' 
    WHERE `asistentes`.`id` = {}; """.format(valores["nombre"],
                                             valores["apellido"],
                                             valores["dni"],
                                             valores["email"],
                                             valores["domicilio"],
                                             int(valores["id"]))
    mycursor.execute(qry)
    con.commit()

def modific_profesionales(valores):
    qry = """UPDATE `profesionales` SET `nombre` = '{}', `apellido` = '{}', `domicilio` = '{}', `dni` = '{}', `email` = '{}m'
    , `profesion` = '{}' WHERE `profesionales`.`id` = {};""".format(valores["nombre"],
                                                                    valores["apellido"],
                                                                    valores["domicilio"],
                                                                    valores["dni"],
                                                                    valores["email"],
                                                                    valores["profesion"],
                                                                    int(valores["id"]))
    mycursor.execute(qry)
    con.commit()

def modif_cursos(valores):
    qry = """UPDATE `cursos` SET `nombre` = '{}', `id_profesor` = {}, `id_categoria` = {}, `turno` = '{}', `descripcion` = '{}' 
    WHERE `cursos`.`id` = {}; """.format(valores["nombre"],
                                         valores["id_profesor"],
                                         valores["id_categoria"],
                                         valores["turno"],
                                         valores["descripcion"],
                                         int(valores["id"]))
    mycursor.execute(qry)
    con.commit()

#alta/baja asignacion lases alumnos

def inscribir_alumno(valores):
    qry = """INSERT INTO `alumnos_cursos` (`id`, `id_curso`, `id_alumno`) VALUES (NULL, '{}', '{}');""".format(valores[0],valores[1])
    mycursor.execute(qry)
    con.commit()

def ultimo_inscripto():
    qry = """SELECT @last_id := MAX(id) FROM alumnos"""
    mycursor.execute(qry)
    bam = mycursor.fetchall()
    con.commit()
    return bam[0][0]


def busqueda_alumnos_mat(valores):
    # Busqueda de alumnos por id del curso(trae id,nombre,apellido,dni y nombre del curso)
    qry = """SELECT alumnos.id,alumnos.nombre,alumnos.apellido,alumnos.dni,cursos.nombre FROM alumnos 
	INNER JOIN alumnos_cursos on alumnos.id=alumnos_cursos.id_alumno INNER JOIN cursos 
	ON alumnos_cursos.id_curso=cursos.id WHERE cursos.id={} """.format(valores)
    mycursor.execute(qry)
    bam = mycursor.fetchall()
    con.commit()
    return list(bam)


def busqueda_asis_mat(valores):
    # Busqueda de el asistente por el id del curso(trae el nombre,apellido y dni )
    qry = """SELECT asistentes.id,asistentes.nombre,asistentes.apellido,asistentes.dni FROM asistentes 
	INNER JOIN asistentes_cursos on asistentes.id=asistentes_cursos.id_asistente 
	INNER JOIN cursos on asistentes_cursos.id_curso=cursos.id WHERE cursos.id={}""".format(valores)
    mycursor.execute(qry)
    bam = mycursor.fetchall()
    con.commit()
    return list(bam)


def busqueda_mat_alum(valores):
    # busqueda de materias por alumno(trae id,nombre y discripcion)
    qry = """SELECT profesionales.nombre, profesionales.apellido, cursos.nombre,cursos.descripcion,cursos.id FROM cursos 
    JOIN profesionales ON profesionales.id = cursos.id_profesor
	INNER JOIN alumnos_cursos ON cursos.id=alumnos_cursos.id_curso 
	INNER JOIN alumnos ON alumnos_cursos.id_alumno=alumnos.id WHERE alumnos.id={}""".format(valores)
    mycursor.execute(qry)
    bma = mycursor.fetchall()
    con.commit()
    return list(bma)

#proban2
if __name__== '__main__':
    print(devuelve_lista('alumnos'))
    print(devuelve_lista('cursos'))