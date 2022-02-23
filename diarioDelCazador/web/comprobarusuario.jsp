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
<body>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/diario_del_cazador?useSSL=false&allowPublicKeyRetrieval=true","root", "");
        Statement s = conexion.createStatement();
        
        String consulta = "SELECT COUNT(*) FROM usuario WHERE NickUsu='"
          + request.getParameter("NombreUsuario")
          + "' AND ContrUsu='"
          + request.getParameter("Contrasenia")
          + "'";
        
        ResultSet usuarioEncontrado = s.executeQuery(consulta);
        usuarioEncontrado.next();

        if (usuarioEncontrado.getInt(1) == 1) {
            session.setAttribute("NombreUsuario", request.getParameter("NombreUsuario"));
            session.setAttribute("Contrasenia", request.getParameter("Contrasenia"));
            response.sendRedirect("./principal.jsp");
        } else {
            response.sendRedirect("./index.jsp");
        }
    %>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
