# Protocol-HTTP-server-client
Dupla de software cliente-servidor que envia y recibe solicitudes HTTP

## Tabla de Contenidos
* [Informacion General](#general-information)
* [Tecnologias Usadas](#technologies-used)
* [Caracteristicas](#features)
* [Configuracion](#setup)
* [Uso](#usage)
* [Estado del Proyecto](#project-status)
* [Agradecimientos](#acknowledgements)
<!-- * [License](#license) -->


## Informacion General
- Dupla de software para un cliente/servidor
- El cliente da la posibilidad de enviar solicitudes REQUEST Y GET a una ruta especifica que es donde esta alojada el servidor HTTP con su INDEX
- Enviar solicitudes HTTP al servidor y registrar su trafico con una herramienta externa

<!-- You don't have to answer all the questions - just the ones relevant to your project. -->


## Tecnologias Usadas
- Python
- Docker
- Node.JS


## Caracteristicas
List the ready features here:
- http-serveres un servidor HTTP estático de línea de comandos simple y sin configuración. Es lo suficientemente potente para el uso de producción, pero es lo suficientemente simple y pirateable para usarse para pruebas, desarrollo local y aprendizaje.
- urllib3 es un cliente HTTP potente y fácil de usar para Python. Gran parte del ecosistema de Python ya usa urllib3 y tú también deberías hacerlo.



## Configuracion
Instalar librerias npm de Linux y Python antes de cualquier cosa.
Descargar los archivos del repositorio. Usar los siguientes comandos para instalar el lado del servidor:
`npm install --global http-server`
Instalar pip3 para python:
`$ python -m pip install urllib3`
Ahora ejecutar el siguiente codigo en python para el lado del cliente:

>>> import urllib3
>>> http = urllib3.PoolManager()
>>> resp = http.request("GET", "http://httpbin.org/robots.txt")
>>> resp.status 200
>>> resp.datab"User-agent: *\nDisallow: /deny\n"

Para realizar una solicitud utilice request():

`r = http.request('GET', 'http://httpbin.org/robots.txt')
r.data
b'User-agent: *\nDisallow: /deny\n'`


Puede usar request()para hacer solicitudes usando cualquier verbo HTTP:

`r = http.request(
    'POST',
    'http://httpbin.org/post',
    fields={'hello': 'world'}
)`
La sección Solicitar datos cubre el envío de otros tipos de datos de solicitudes, incluidos JSON, archivos y datos binarios.


## Uso

Descargar y descomprimir zip.

Usar comando 

`docker build -t tarea2 [PATH]`

[path] el valor predeterminado es ./public si la carpeta existe, y de ./ lo contrario.

Luego usar el comando 

`docker run -d -p 8080:8080 tarea2`

Finalmente utilizar el Python como cliente


## Estado del Proyecto
El proyecto se encuentra en funcionamiento. Instalar y usar.


## Agradecimientos
https://urllib3.readthedocs.io/en/stable/

https://github.com/http-party/http-server

