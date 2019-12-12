import re

#Funcion para validar los caracteres especiales del mail respecto del formato que correspondiente para el mismo
def emailValidation(email):
    regex = '^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})$'
    if (re.search(regex,email)):
        return True
    else:
        return False

def validar_campos(data=dict):
    nombre = data['nombre']
    apellido = data['apellido']
    dni = data['dni']
    fecha = data['fechanac']
    usuario = data['usuario']
    password = data['password']
    email = data['email']
    domicilio = data['domicilio']
    diagnostico = data['diagnostico']
    if nombre.isalpha() and apellido.isalpha() and dni.isdigit() and int(dni)>5000000 and int(dni)<45000000 and int(fecha[0:4]) < 2018 and int(fecha[0:4]) > 1920 \
            and usuario.isalnum() and password.isalnum() and len(usuario)<15 and len(password)<15 and emailValidation(email):
        return True
    else:
        return False








