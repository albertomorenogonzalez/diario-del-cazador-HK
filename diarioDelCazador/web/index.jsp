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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="./styles/style.css">
</head>
<body>
  <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/diario_del_cazador?useSSL=false&allowPublicKeyRetrieval=true","root", "");
    Statement s = conexion.createStatement();
  %>

  <div id="wrapper" class="container-fluid">
    <div class="row m-3">
        <div class="col-lg-6">
            <form  method="post" action="..." class="border p-5">
                <h1 class="text-light">
                <img id="logo" src="images/iconhn.jpg">
                DIARIO DEL CAZADOR</h1>
                <div class="mb-3">
                    <label for="identificador" class="form-label text-light">Usuario</label>
                    <input type="text" class="form-control" id="identificador" name="identificador" aria-describedby="idHelp" required>
                    <div id="idHelp" class="form-text"></div>
                </div>
                <div class="mb-3">
                    <label for="pwd" class="form-label text-light">Contraseña</label>
                    <input type="password" class="form-control" id="pwd" required >
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
                <p class="text-light"><br>¿No tienes cuenta?</p>
                <button type="submit" class="btn btn-primary">Registrarse</button>
                <button type="submit" class="btn btn-primary">Entrar como Invitado</button>
            </form>
        </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  <%
      conexion.close();
  %>
</body>
</html>