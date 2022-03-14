# Diario del Cazador de Hollow Knight
Aplicación CRUD del Diario del Cazador del videojuego Hollow Knight. Es una base de datos que alberga información de todos los enemigos de ese videojuego. En ella se podrán insertar, borrar o editar datos.

---

<p align="center">
  <img src="https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/diarioDelCazador/web/images/icon.jpg">
</p>

<p align="center">
   <i>"Aventúrate en las profundidades de esta tierra y dale muerte a las bestias. Demuestra que eres digno de llevar la marca del cazador"</i>
</p>

---

<br>

![index](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/index.png)

<br>    
    
Lo primero que vemos al abrir la aplicación es esta página, un "login" en el que como usuarios podremos iniciar sesión. Probemos a darle al botón enviar sin rellenar el formulario de entrada.

<br>

![envioformulariosindatos](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/envioformulariosindatos.png)

<br>

Podemos ver como necesitamos rellenar el formulario para continuar si es que pulsamos el botón enviar. En todo el programa cada formulario con un asterisco será obligatorio de rellenar. Podemos crear un nuevo usuario con el botón "Registrarse" o entrar como invitado dándole al respectivo botón. Hagamos esto último.

<br>

![paginaprincipalinvitado](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/paginaprincipalinvitado.png)

<br>

Nos encontramos con la página principal. En ella podemos consultar los datos de los enemigos que ya se encuentran en la base de datos. Veamos cada uno de los elementos de ella.

<br>

En la parte superior tenemos una imagen de perfil genérica junto a dos enlaces, uno que nos enviará a la página de registro de usuarios y otra que nos devolverá al login del principio. Cuando entremos como usuario registrado veremos como cambia.

<br>

A continuación tenemos la tabla donde se encuentran los datos de los enemigos del juego. Por cada enemigo tenemos su nombre, una imagen suya, una descripción del mismo, su zona de apararición, si es un boss o no (Un boss o jefe es el enemigo final de una zona o simplemente un enemigo más poderoso que el resto), si lo es, pondrá "Sí", si no, "No". 

<br>

Si dejamos el cursor sobre el nombre de una zona nos aparecerá en forma de tooltip la descripción de la misma.

<br>

![descripcionzona](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/descripcionzona.png)

<br>

Después de la columna "Boss" tenemos dos columnas más, la columna "Editar" y la columna "Borrar". Cada una alberga un botón por cada enemigo que al pulsar ejecutará un evento distinto. Si pulsamos un botón verde como invitado aparecerá la página de registro de usuario, ya que a menos que estemos registrados no podemos modificar datos de enemigos.

<br>

![registrodeusuarios](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/registrodeusuarios.png)

<br>

Si pulsamos un botón rojo como invitado en la página principal, nos aparecerá un modal indicando que necesitamos permisos de administrador para borrar los datos de un enemigo.

<br>

![resultadointentoborrarinvitado](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/resultadointentoborrarinvitado.png)

<br>

Ahora bajemos hasta el final de la página, nos encontraremos esto:

<br>

![aniadirenemigoinvitado](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/aniadirenemigoinvitado.png)

<br>

Si pulsamos ese botón como invitado, al igual que con el botón de editar enemigo, iremos a la página de registro de usuario, y ya que nos encontramos en ella, registraremos un usuario.

<br>

![registrandouser1](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/registrandouser1.png)

<br>

En este caso hemos seleccionado una foto de perfil pero podríamos perfectamente no poner una si no indicamos nada distinto a la opción seleccionada por defecto en el desplegable, y nuestro usuario tendrá asignada la misma foto de perfil que le aparece a un usuario invitado.

<br>

![desplegablefotoperfil](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/desplegablefotoperfil.png)

<br>

El valor de la fecha de nacimiento originalmente era del tipo date en la base de datos, pero debido a que el formato del navegador es distinto al formato de phpadmin y genera conflicto al añadir los datos.

<br>

Cuando hemos rellenado todos los datos necesarios para registrar al usuario, le damos al botón "Registrarse". El botón "Cancelar" nos devolverá a la página de inicio. Al darle al botón "Registrarse" los datos se enviarán a la página insertausuario.jsp, que contiene la siguiente función para añadirla a la base de datos

<br>

![insertarusuariofuncion](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/insertarusuariofuncion.png)

<br>

y nos aparecerá una página con el siguiente mensaje:

<br>

![userregistradoconfirmacion](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/userregistradoconfirmacion.png)

<br>

Pulsamos el botón, volvemos a la página de inicio, rellenamos el formulario con los datos del nuevo usuario y le damos a "Enviar".

<br>

![iniciandosesion](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/iniciandosesion.png)

<br>

Nos aparece la página principal, con neustro nombre de usuario y nuestra foto de perfil en la parte superior, junto con un "Cerrar Sesión". Ahora si podemos añadir o modificar enemigos. 

<br>

![principalusuarioregistrado](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/principalusuarioregistrado.png)

<br>

Bajemos hasta el fondo de la página y pulsemos en "Añadir enemigo". Nos aparecerá este formulario.

<br>

![insertarenemigo](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/insertarenemigo.png)

![desplegablezonas](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/desplegablezonas.png)

![desplegablebosses](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/desplegablebosses.png)

<br>

Añadiremos los siguiente datos:

- Nombre: Hollow Knight

- Descripción: Receptáculo adulto que encierra al corazón de la plaga en su cuerpo.

- Zona: Cruces Olvidados

- ¿Es Boss?: Sí

<br>

![insertandoenemigo](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/insertandoenemigo.png)

<br>

Le damos a "Añadir" para añadir los datos del enemigo a la base de datos y "Cancelar" para volver a la página principal, al darle a "Añadir se enviarán los datos a la página insertar.jsp que contiene la siguiente función para añadirla a la base de datos.

<br>

![insertarfuncion](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/insertarfuncion.png)

<br>

y nos aparecerá una página con el siguiente mensaje:

<br>

![enemigoaniadidoconfirmacion](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/enemigoaniadidoconfirmacion.png)

<br>

Al volver a la página principal podemos ver al nuevo enemigo añadido.

<br>

![enemigoaniadido](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/enemigoaniadido.png)

<br>

Ahora modifiquemos la descripción y añadamos la siguiente

- Descripción: El antiguo Rey de Hallownest... llegó a tomar medidas desesperadas para salvar su pequeño mundo. Obligó a muchos a realizar tremendos sacrificios... y todo para nada.

<br>

![modificarenemigo](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/modificarenemigo.png)

<br>

<br>

![desplegablezonasmodificar](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/desplegablezonasmodificar.png)

<br>

<br>

![desplegablebossesmodificar](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/desplegablebossesmodificar.png)

<br>

<br>

![modificandoenemigo](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/modificandoenemigo.png)

<br>

El botón "Modificar" modificará los datos del enemigo, y el botón "Cancelar" nos devolverá a la página principal, al darle a "Modifcar"r se enviarán los datos a la página editar.jsp que contiene la siguiente función para añadirla a la base de datos

<br>

![editarfuncion](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/editarfuncion.png)

<br>

y nos aparecerá una página con el siguiente mensaje:

<br>

![enemigomodificadoconfirmacion](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/enemigomodificadoconfirmacion.png)

<br>

Podemos ver al volver a la página principal los datos modificados.

<br>

![enemigomodificado](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/enemigomodificado.png)

<br>

Pero ahora si le damos a borrar enemigo, nos aparecerá el mismo mensaje que cuando entramos a la página como invitado.

<br>

![resultadointentoborradoregistrado](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/resultadointentoborradoregistrado.png)

<br>

Para borrar los datos del enemigo, necesitaremos iniciar sesión con un usuario administrador, por lo que le daremos a "Cerrar Sesión" y volveremos a la página de inicio. Para cerrar la sesión en index.jsp al principio declararemos todas las variables de sesión como null, y ya después en el formulario se enviarán los datos introducidos a comprobarusuario.jsp para comprobar si esos datos coinciden con los que haya en la base de datos, en caso contrario se volverá a index.jsp.

Código de index.jsp:

<br>

![codigoindex](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/codigoindex.png)

<br>

Código de comprobación en comprobarusuario.jsp:

<br>

![comprobarfuncion](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/comprobarfuncion.png)

<br>

En la página de inicio ponemos el **Usuario: admin** y **Contraseña: root** y le damos a "Enviar".

<br>

![iniciandosesioncomoadmin](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/iniciandosesioncomoadmin.png)

<br>

![principaladmin](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/principaladmin.png)

<br>

Vemos que el usuario que es administrador tiene una estrella junto a su nombre. Busquemos el enemigo que antes no pudimos borrar y demósle al botón de borrado.

<br>

![borradoenemigoadmin](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/borradoenemigoadmin.png)

<br>

Vemos que el mensaje cambia, ahora aparece el botón "Borrar" dentro del modal. Si le damos se enviará el id del enemigo (que está oculto) a borrar.jsp nos aparecerá el seguiente mensaje

<br>

![confirmacionborrado](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/confirmacionborrado.png)

<br>

y se ejecutó la siguiente función:

<br>

![borrarfuncion](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/borrarfuncion.png)

<br>

Al volver a la página principal nos encontraremos con que el enemigo ya no aparece.

<br>

![enemigoborrado](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/enemigoborrado.png)

<br>

<br>

Nota: las imágenes de los enemigos aparecen gracias a que tienen el mismo nombre que los enemigos. La imagen de Hollow Knight aparece porque está guardada en los archivos de la aplicación. Si se intenta añadir otro enemigo no saldrá imagen.

<br>

---

**Código Destacado**

<br>

Consultas SQL de la página principal para mostrar los datos

<br>

![principalqueries](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/principalqueries.png)

<br>

<br>

Código de la navbar que cambia según si entra un usuario registrado o un invitado

<br>

![navbar](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/navbar.png)

<br>

<br>

Código de la tabla (sin columnas "Editar y "Borrar") donde se muestran los enemigos y sus datos

<br>

![tabla](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/tabla.png)

<br>

<br>

Código del botón "Añadir", en caso de usuario registrado y de invitado

<br>

![codigobotonaniadir](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/codigobotonaniadir.png)

<br>

<br>

Código del botón "Modificar", en ambos casos de sesión

<br>

![codigobotonmodificar](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/codigobotonmodificar.png)

<br>

<br>

ódigo del botón "Borrar" en ambos casos, admin y no admin

<br>

![codigobotonborrado](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/codigobotonborrado.png)

<br>

<br>

Código de los modales que salen al pulsar el botón "Borrar" en ambos casos, admin y no admin

<br>

![codigomodalesborrado](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/codigomodalesborrado.png)

<br>

<br>

Codigo del formulario para añadir un enemigo

<br>

![codigoformularioaniadirenemigo](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/codigoformularioaniadirenemigo.png)

<br>

<br>

Codigo del formulario para modificar un enemigo

<br>

![codigoformulariomodificar](https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/capturas/codigoformulariomodificar.png)
