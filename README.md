# Como levantar el entorno de desarrollos

## Linux
Ejecutamos en la terminal
```
sudo apt-get update -y && sudo apt-get install -y make
```
## Windows
https://stackoverflow.com/questions/32127524/how-to-install-and-use-make-in-windows

## Instalar git
### Linux
```
sudo apt-get install git
```
### Windows
(https://git-scm.com/download/win)[https://git-scm.com/download/win]
# Create una cuenta de github
(https://github.com/join)[https://github.com/join]
# Create un Fork de este repositorio
[https://aprendegit.com/fork-de-repositorios-para-que-sirve/#:~:text=La%20palabra%20fork%20se%20traduce,como%20un%20repositorio%20git%20cualquiera.](https://aprendegit.com/fork-de-repositorios-para-que-sirve/#:~:text=La%20palabra%20fork%20se%20traduce,como%20un%20repositorio%20git%20cualquiera.)

Un fork es una copia de este repositorio en un repositorio tuyo personal, ya que de lo contrario no podrás subir tus cambios.

# Instalar cliente de BD
https://dbeaver.io/
https://www.mysql.com/products/workbench/
# Tarea de creación de una base de datos:
Primero crearemos una carpeta SQL y dentro de ella crearemos una carpeta llamada DML y otra DDL, coloca los scripts que vamos a hacer con la creación y modificación de la base de datos, en la carpeta de DDL

# Diseño de ER para crear una base de datos
Diseñar un ER que represente el uso de una agenda, donde tendremos:
```
	- Usuario
		- Email
		- Contraseña
		- Fecha de nacimiento
		- DNI
		- created_at
		- updated_at
		- deleted_at
	- Contacto:
		- ninguno o más emails
		- uno o muchos tlf
		- Nombre
		- Apellido1
		- Apellido2
		- Sexo
		- Fecha de nacimiento
        	- created_at
		- updated_at
		- deleted_at
```

# Creación de esquema de base de datos
Convertir dicho ER en un esquema de base de datos teniendo en cuenta cosas como:

Tienes que analizar cosas como que tipo de dato debería utilizar, porque y cual debería ser la longitud de cada uno de los atributos, cueles son únicos y/o tendrían valores por defecto.

## Encontar las consultas que tenemos que hacer para identificar como se han creado las tablas
esto también se llama la definición de las tablas
# Inserción de base de datos
- Tienes que crear 4 usuarios distintos
- Tienes que insertar por lo menos 100 contactos por cada usuario

# Altera la tabla para que la tabla con
Altera la tabla contacto para que el campo Sexo sea M o F Masculino o femenino

# Compartir contactos
Ahora queremos que los usuarios puedan compartir contactos con otros usuarios, que deberíamos hacer, como podríamos hacerlos. Ahora quiero que lo hagais.
# Consultas:
- [ ] Lista todos los usuarios
- [ ] Lista todos los contactos
- [ ] Lista todos los usuarios con sus contactos
- [ ] Lista todos los todos los usuarios que sean mayores de edad
- [ ] Listar todos los usuarios que su nombre empiece por "a"
- [ ] Listar todos los usuarios que su apellido empiece por "a"
- [ ] Listar todos los usuarios que su nombre contenga la "a"
- [ ] Listar todos los usuarios que su nombre empiece por "a" y ordenarlos por nombre
- [ ] Listar todos los usuarios que su apellido empiece por "a" y ordenarlos por apellido
- [ ] Listar todos los usuarios que su nombre contenga la "a" y ordenarlos por fecha de nacimiento
- [ ] Listar todos los contactos que su nombre empiece por a para cada usuario
- [ ] Decir cuantos contactos que su nombre empiece por a para cada usuario
- [ ] Listar todos los usuarios que su apellido empiece por a
- [ ] Listar todos los usuarios que su nombre contenga la a
- [ ] Cuantos emails existen en la BD
- [ ] Cuantos tlf existen en la BD
- [ ] Cuantos contactos por cada uno de los usuarios son mayores de edad
- [ ] Cual es el usuario con mayor edad de los que existen
- [ ] Cual es el contacto con menor edad de los que existen
- [ ] A que usuario pertenece el contacto con menor edad
- [ ] A que usuario pertenece el contacto con mayor edad
- [ ] Lista de todos los contactos un atributo llamado "full_name" que sea el conjunto del nombre, apellido1 y apellido2
- [ ] Listar todos los contactos que contengan una "e", que sean mayores de edad, que su DNI contanga un 1 ordenarlo y los agrupamos por fecha de nacimiento
- [ ] Hallar todos los datos de los contactos menores de 18 años a fecha de hoy

# Actualizaciones:
- [ ] Actualizaremos la fecha de nacimiento a la fecha actual de todos los contactos del usuario 4 que en su apellido2 contengan una "a" y en su DNI contenga la "5" 


# Borrado de constactos
Vamos a insertar un usuario y varios contactos y vamos a intentar hacer lo siguiente.
- [ ] Borrar el usuario (¿Qué ocurre?)
- [ ] Borrar un contacto
- [ ] Borrar todos los contactos
- [ ] Borrar el usuario

# Programación
El siguiente paso es desarrollar un programa en java que represente estos modelos de la entidad relación y que hagamos un programa donde nos conectemos a la base de datos y podamos:
- [ ] Crear un nuevo usuario
- [ ] Iniciar sesión con usuario
- [ ] Listar sus contactos
- [ ] Crear contactos
- [ ] Editar contactos
- [ ] Borrar contactos

Para ello lo primero que tienes que hacer es ver el curso de http://www.formacarm.es/portal/servlet/formacarm.servlets.Portal?METHOD=DTEMARIO&id=210

# Ejercicios de consultas un poquito más en detalle
Para esto vamos a cargar una nueva base de datos que ya está preparada en la carpeta dump
Ejecutaremos el comando
```shell
make load-comercial-db
```
1 -  Hallar todos los datos de los clientes mayores de 20 años a fecha de hoy
2 - Hallar todos los datos de los clientes mayores de 35 años que residan en un distrito de codigo postal 30001
3 - Hallar el nº de clientes qye residan en cada uno de los distritos (que tengan mismo código postal) En la salida 
4 - Hallar los diferentes códigos postales donde tenemos tanto clientes como comerciales.
5 - Hallar la media de los stocks de artículos. (solo con dos decimales)
6 - Hallar la media del precio unitario de los artículos que se hayan vendido en 2014 (que aparezcan en albaranes de 2014) (solo con dos decimales)
7 - Hallar el código y descripción de aquellos artículos que están por encima del precio medio de todos los artículos
8 - Hallar el valor total actual del almacen. (lo que valen todos los artículos que tenemos en stock almacenados).
9 - Hallar el valor de la facturación total en 2012
10 - Hallar el valor de la facturación total en cada distrito (codigo_postal de cliente). Incluye en la salida el código postal y la facturación total para ese distrito.
11 - Hallar (en una solo consulta) el valor de la facturación total por cada año. Incluye el valor total y el año en el resultado de la consulta.
12 - Hallar (para cada factura) el nº de albaranes que la componen. Incluye el cod_fact y el nº de albaranes en el resultado de la consulta.
13 - Hallar todos los datos de la factura de mayor importe.
14 - Hallar los cod_fact e importe de las facturas correspondientes a los tres mayores importes.
15 - Hallar todos los datos de tres facturas de mayor importe.
16 - Hallar todos los datos de los artículos cuyo media de ventas para ese articulo
(media del nº de unidades vendidas en cada albaran para ese artículo) suponga
40% o más del stock actual para ese artículo.
17 - Hallar todos los datos de los albaranes correspondientes a los tres mayores 
importes de albaranes (Ayuda: hay que calcular el importe de cada albaran ya que
no esta en la tabla) (puedes utilizar una tabla temporal(TEMPORARY) para
resultados intermedios)
18 - Hallar, para cada cliente, el dni junto con su facturación total.
19 - Hallar para cada comercial, el importe total de la facturación originada por los
clientes que ha visitado alguna vez. Incluye dni de comercial y facturación de sus 
clientes. (Atención a no sumar repetidas veces importes de facturas. Puedes
utilizar una tabla temporal TEMPORARY para resultados intermedios)
20 - Hallar la consulta para averiguar si existe algún artículo que se haya vendido a
todos los clientes. Si existe indicar código de artículo y descripción. 
21 - Hallar si existe algún artículo (y si existe, indicar su código y descripción) que se
haya vendido en todos los distritos (tomando como referencia de distrito el código
postal del cliente). (Sin TEMPORARY tabla 100% de la nota, con TEMPORARY
tabla 45% de la nota)
