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
<body id="index">
  <%
    session.setAttribute("NombreUsuario", null);
    session.setAttribute("Contrasenia", null);
  %>

  <div id="wrapper" class="container-fluid">
    <div class="row m-3">
        <div class="col-lg-6">
            <form  method="post" action="./comprobarusuario.jsp" class="border shadow-lg p-5">
                <h1 class="text-light">
                <img id="logo" src="./images/icon.jpg">
                DIARIO DEL CAZADOR</h1>
                <div class="mb-3">
                    <label for="nick" class="form-label text-light mt-5">Usuario *</label>
                    <input type="text" class="form-control" id="NombreUsuario" name="NombreUsuario" aria-describedby="idHelp" required>
                    <div id="idHelp" class="form-text"></div>
                </div>
                <div class="mb-3">
                    <label for="pwd" class="form-label text-light mt-3">Contraseña *</label>
                    <input type="password" class="form-control" id="pwd" name="Contrasenia">
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
                
                <p class="text-light mt-5">¿No tienes cuenta?</p>
                <a href="./registrousuario.jsp"class="btn btn-primary mt-1 me-2">Registrarse</a>
                <a href="./principal.jsp" class="btn btn-primary mt-2">Entrar como Invitado</a>
            </form>
        </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>