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
<body id="aniadir">
  <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/diario_del_cazador?useSSL=false&allowPublicKeyRetrieval=true","root", "");
    Statement s = conexion.createStatement();
    
    request.setCharacterEncoding("UTF-8");
        
        String insercion = "INSERT INTO `enemigo` (`NomEne`, `DescEne`, `BossEne`, `zona_CodZona`) VALUES ("
                + "'" + request.getParameter("Nombre")
                + "', '" + request.getParameter("Descripcion")
                + "', b'" + request.getParameter("esBoss")
                + "', '" + request.getParameter("NombreZona")
                + "')";
        s.execute(insercion);
        conexion.close();
    %>
    
    <div id="wrapper" class="container p-4 my-5 text-light">
        <div class="text-center">
            <img src="./images/icon.jpg">
            <h4 class="mt-5">El nuevo enemigo ha sido añadido con éxito</h4>
            <a href="./principal.jsp" class="btn btn-success mt-5">Volver a la página principal</a>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
