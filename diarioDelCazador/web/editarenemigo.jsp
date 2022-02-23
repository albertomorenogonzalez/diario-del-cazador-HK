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
<body id="editar">
  <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/diario_del_cazador?useSSL=false&allowPublicKeyRetrieval=true","root", "");
    Statement s = conexion.createStatement();
    
    request.setCharacterEncoding("UTF-8");
    
    ResultSet listaZonas = s.executeQuery("SELECT CodZona, NomZona FROM zona");
                                                    
  %>
    <div id="wrapper" class="container p-4 my-5 text-light">
        <form method="get" action="./editar.jsp" class="row needs-validation border shadow-lg p-5" novalidate>
            <h1><img id="logo" src="./images/icon.jpg"> MODIFICAR LOS DATOS DE UN ENEMIGO</h1>
            <br>
            <div class="col-md-4">
              <input type="hidden" name="CodEne" value="<%=request.getParameter("CodEne")%>" required>
              <label for="name" class="form-label mt-5">Nombre *</label>
              <input type="text" class="form-control" name="Nombre" value="<%=request.getParameter("NomEne")%>" required>
            </div>
            <div class="col-12">
              <label for="description" class="form-label mt-3">Descripción *</label>
              <input type="text" class="form-control" name="Descripcion" value="<%=request.getParameter("DescEne")%>" required>
            </div>
            <div class="col-md-3">
              <label for="zone" class="form-label mt-3">Zona *</label>
              <select type="text" class="form-select" name="NombreZona" required>
                  <option value="<%=request.getParameter("zona_CodZona")%>"><%=request.getParameter("NomZona")%></option>
                    <%
                        while (listaZonas.next()) {
                          %>
                          <option value="<%=listaZonas.getString("CodZona")%>"><%=listaZonas.getString("NomZona")%></option>
                          <%
                        }
                    %>
              </select>
            </div>
            <div class="col-2">
              <label for="esboss" class="form-label mt-3">¿Es Boss? *</label>
              <select type="text" class="form-select" name="esBoss" required>
                <%
                    if (request.getParameter("BossEne").equals("0")) {
                        %>
                        <option value="0">No</option>
                        <%
                    } else {
                        %>
                        <option value="1">Sí</option>
                        <%
                    }
                %>
                <option value="0">No</option>
                <option value="1">Sí</option>   
              </select>
            </div>
            <div class="col-12">
                <a href="./insertar.jsp"><button class="btn btn-success mt-5 me-3" type="submit">Modificar</button></a>
                <a href="./principal.jsp" class="btn btn-danger mt-5">Cancelar</a>
            </div>
          </form>
    </div>
              
    <%
        conexion.close();
    %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
