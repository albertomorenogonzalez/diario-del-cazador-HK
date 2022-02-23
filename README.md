# Diario del Cazador de Hollow Knight
Aplicación CRUD del Diario del Cazador del videojuego Hollow Knight. Es una base de datos que alberga información de todos los enemigos de ese videojuego. En ella se podrán insertar, borrar o editar datos.

---

<p align="center">
  <img src="https://github.com/albertomorenogonzalez/diario-del-cazador-HK/blob/main/diarioDelCazador/web/images/icon.jpg">
</p>

<p align="center">
   "Aventúrate en las profundidades de esta tierra y dale muerte a las bestias. Demuestra que eres digno de llevar la marca del cazador."
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

