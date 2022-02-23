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
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
</head>
<body id="principal">
  <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/diario_del_cazador?useSSL=false&allowPublicKeyRetrieval=true","root", "");
    Statement s = conexion.createStatement();
    Statement r = conexion.createStatement();
    
    ResultSet tabla = s.executeQuery("SELECT * FROM enemigo e JOIN zona z ON (e.zona_CodZona = z.CodZona) ORDER BY e.CodEne");
    
    ResultSet datosUsuario = r.executeQuery("SELECT * FROM usuario u JOIN foto_perfil f ON (u.fotoperfil_CodFot = f.CodFot) WHERE NickUsu ='" +  session.getAttribute("NombreUsuario") + "' AND ContrUsu ='" + session.getAttribute("Contrasenia") + "'");
    datosUsuario.next();
  %>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark position-sticky top-0">
        <div class="container-fluid">
            <%
                if (session.getAttribute("NombreUsuario") != null) {
            %>
            <a class="navbar-brand text-center" href="#">
                <img class="rounded w-50" src="./images/<%=datosUsuario.getString("NomFot")%>.png">
            </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#"><%=datosUsuario.getString("NickUsu")%>
                    <%
                        if (datosUsuario.getString("AdminUsu").equals("1")) {
                            %>
                            <i class="bi bi-star-fill"></i>
                            <%
                        }
                    %>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="./index.jsp">Cerrar Sesión</a>
              </li>
            </ul>
            <%
                } else {
            %>
            <a class="navbar-brand text-center" href="#">
                <img class="rounded w-50" src="./images/null.png">
            </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="./registrousuario.jsp">Regístrate</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="./index.jsp">Iniciar Sesión</a>
              </li>
            </ul>
            <%
                }
            %>
          </div>
        </div>
    </nav>
    <div id="wrapper" class="container p-4 my-5">
        <div class="row">
            <div class="col-12 d-flex align-items-center vh-80 m-auto">
                <div class="table-responsive bg-dark mt-5 p-3">
                  <table class="table table-striped table-dark align-middle p-5 text-center">
                      <thead>
                      <tr>
                        <th scope="col">Nombre</th>
                        <th scope="col">Enemigo</th>
                        <th scope="col">Descripción</th>
                        <th scope="col">Zona</th>
                        <th scope="col">Boss</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Borrar</th>
                      </tr>
                    </thead>
                    <tbody>
                <%
                  while (tabla.next()) {
                    %>
                    <tr>
                        <td id="nombre"><%=tabla.getString("NomEne")%></td>
                        <td><img src="./images/<%=tabla.getString("NomEne")%>.png"></td>
                        <td class="text-start"><%=tabla.getString("DescEne")%></td>                        
                        <td data-bs-toggle="tooltip" title="<%=tabla.getString("DescZona")%>"><%=tabla.getString("NomZona")%></td>
                        <td>
                            <%
                                if (tabla.getInt("BossEne") == 1) {
                                    out.print("Sí");
                                } else {
                                    out.print("No");
                                }
                            %>
                        </td>
                        <td>
                            <%
                                if (session.getAttribute("NombreUsuario") != null) {
                            %>
                            <form method="get" action="./editarenemigo.jsp">
                                <input type="hidden" name="CodEne" value="<%=tabla.getString("CodEne")%>"/>
                                <input type="hidden" name="NomEne" value="<%=tabla.getString("NomEne")%>"/>
                                <input type="hidden" name="DescEne" value="<%=tabla.getString("DescEne")%>"/>
                                <input type="hidden" name="BossEne" value="<%=tabla.getString("BossEne")%>"/>
                                <input type="hidden" name="NomZona" value="<%=tabla.getString("NomZona")%>"/>
                                <input type="hidden" name="zona_CodZona" value="<%=tabla.getString("zona_CodZona")%>"/>
                                <button class="btn btn-success"><i class="bi bi-pencil fs-3 text-light"></i></button>
                            </form>
                            <%
                                } else {
                            %>
                            <a href="./registrousuario.jsp"><button class="btn btn-success"><i class="bi bi-pencil fs-3 text-light"></i></button></a>
                            <%
                                } 
                            %>
                        </td>
                        <td>
                            <%
                                if ((session.getAttribute("NombreUsuario") != null) && (datosUsuario.getString("AdminUsu").equals("1"))) {
                            %>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop<%=tabla.getString("CodEne")%>">
                              <i class="bi bi-trash3 fs-3 text-light"></i>
                            </button>
                            <%
                                } else {
                            %>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal<%=tabla.getString("CodEne")%>">
                              <i class="bi bi-trash3 fs-3 text-light"></i>
                            </button>
                            <%
                                } 
                            %>
                            <div class="modal fade" id="staticBackdrop<%=tabla.getString("CodEne")%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel<%=tabla.getString("CodEne")%>" aria-hidden="true">
                              <div class="modal-dialog">
                                <div class="modal-content bg-dark">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="staticBackdropLabel<%=tabla.getString("CodEne")%>">Borrado Permanente de un Enemigo</h5>
                                    <button type="button" class="btn-close bg-light" data-bs-dismiss="modal" aria-label="Close"></button>
                                  </div>
                                  <div class="modal-body">
                                    <p>¿Está seguro de que quiere borrar este enemigo?</p>
                                  </div>
                                  <div class="modal-footer">
                                    <button class="btn btn-success" data-bs-dismiss="modal">Atrás</button>
                                        <form method="get" action="borrar.jsp">
                                            <input type="hidden" name="borrar" value="<%=tabla.getString("CodEne")%>"/>
                                            <button class="btn btn-danger">Borrar</button>
                                        </form>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="modal fade" id="exampleModal<%=tabla.getString("CodEne")%>" tabindex="-1" aria-labelledby="exampleModalLable<%=tabla.getString("CodEne")%>" aria-hidden="true">
                              <div class="modal-dialog">
                                <div class="modal-content bg-dark">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel<%=tabla.getString("CodEne")%>">Acción denegada</h5>
                                    <button type="button" class="btn-close bg-light" data-bs-dismiss="modal" aria-label="Close"></button>
                                  </div>
                                  <div class="modal-body">
                                    <p>Necesita permisos de administrador para realizar esta acción</p>
                                  </div>
                                  <div class="modal-footer">
                                    <button class="btn btn-success" data-bs-dismiss="modal">Atrás</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                        </td>
                    </tr>
                    <%
                  }

                  conexion.close();
                %>
                    </tbody>
                  </table>
                    
                </div>
            </div>
        </div>  
        <div class="row bg-dark p-4 mt-2 text-center">
            <div class="col-12">
                <p class="text-light">Esta lista está incompleta, por favor, ayúdanos a expandirla<br></p>
                <%
                    if (session.getAttribute("NombreUsuario") != null) {
                %>
                <a href="./insertarenemigonuevo.jsp"><button class="btn btn-success">Añadir enemigo</button></a>
                <%
                    } else {
                %>
                <a href="./registrousuario.jsp"><button class="btn btn-success">Añadir enemigo</button></a>
                <%
                    } 
                %>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="./javascripts/javascripts.js"></script>
</body>
</html>
