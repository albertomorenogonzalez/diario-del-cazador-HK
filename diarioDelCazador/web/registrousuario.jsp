<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Diario del Cazador</title>
  <link rel="shotcut icon" href="./images/favicon.ico" type="image/x-icon">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body id="register">
    <div id="wrapper" class="container p-4 my-5 text-light">
        <form method="post" action="./insertausuario.jsp" class="row needs-validation border shadow-lg p-5" novalidate>
            <h4 class="text-center">Regístrate para poder insertar y modificar enemigos en este proyecto</h4>
            <h1 class="mt-5"><img id="logo" src="./images/icon.jpg"> REGISTRO DE USUARIOS</h1>
            <div class="col-md-4">
              <label for="name" class="form-label mt-5">Nombre *</label>
              <input type="text" class="form-control" name="Nombre"  required>
            </div>
            <div class="col-4">
              <label for="surname1" class="form-label mt-5">Primer Apellido *</label>
              <input type="text" class="form-control" name="Apellido1" required>
            </div>
            <div class="col-4">
              <label for="surname2" class="form-label mt-5">Segundo Apellido</label>
              <input type="text" class="form-control" name="Apellido2">
            </div>
            <div class="col-12 mt-3">
              <label for="email" class="form-label">email *</label>
              <input type="text" class="form-control" name="email" required>
            </div>
            <div class="col-4 mt-3">
              <label for="nick" class="form-label">Nombre de Usuario *</label>
              <input type="text" class="form-control" name="Nick" required>
            </div>
            <div class="col-8 mt-3">
              <label for="pwd" class="form-label">Contraseña *</label>
              <input type="password" class="form-control" name="Contrasenia" required>
            </div>
            <div class="col-12 mt-3">
              <label for="birthdate" class="form-label">Fecha de Nacimiento *</label>
              <input type="text" class="form-control" name="FechaNacimiento" placeholder="dd/mm/yyyy" required>
            </div>
            <div class="col-12 mt-5">
                <label for="profilephoto" class="form-label">Selecciona una foto de perfil</label>
            </div>
            <div class="col-3 mt-2 text-center">
                <img class="w-50" src="./images/knightp.png">
                <p class="mt-1">The Knight</p>
            </div>
            <div class="col-3 mt-2 text-center">
                <img class="w-50" src="./images/hornetp.png">
                <p class="mt-1">Hornet</p>
            </div>
            <div class="col-3 mt-2 text-center">
                <img class="w-50" src="./images/quirrelp.png">
                <p class="mt-1">Quirrel</p>
            </div>
            <div class="col-3 mt-2 text-center">
                <img class="w-50" src="./images/vesselp.png">
                <p class="mt-1">Pure Vessel</p>
            </div>
            <div class="col-12 mt-3">
              <select type="text" class="form-select" name="FotoPerfil">
                <option selected value="0">Seleccione el nombre de la foto que desea tener como foto de perfil...</option>
                <option value="1">The Knight</option>
                <option value="2">Hornet</option>
                <option value="3">Quirrel</option>
                <option value="4">Pure Vessel</option>
              </select>
            </div>
            <div class="col-4 mt-3">
                <a href="./insertarusuario.jsp"><button class="btn btn-success mt-5 me-3" type="submit">Registrarse</button></a>
                <a href="./index.jsp" class="btn btn-danger mt-5">Cancelar</a>
            </div>
          </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
