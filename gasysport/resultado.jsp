<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
    <!DOCTYPE html>
    <html lang="es" class="h-100">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Los Cuentos de Gasy</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    </head>
   

    <body class="d-flex h-100">

        <div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">

            <!-- Barra de Navegación -->
            <header class="d-flex flex-wrap py-2 pt-3 pt-md-2 pb-1 pb-md-3 ps-3 fixed-top bg-dark">
                <a href="/gasysport/#servicio"
                    class="ms-md-5 d-flex align-items-center mb-3 mb-md-0 me-md-auto  link-body-emphasis text-decoration-none">
                    <span class="fs-4 text-info">Volver</span>
                </a>

                <a href="#inicio"
                    class="ms-md-5 ms-3 d-flex align-items-center mb-3 mb-md-0 me-md-5 link-body-emphasis text-decoration-none">
                    <span class="fs-4 text-light">Gasy Sport</span>
                </a>
            </header>
            <main class="row h-100 justify-content-center align-items-center pt-5 pb-5 mb-5">
                <div class="container mt-5 col-md-10">                    
                    <% 
                        String nombreCompleto=request.getParameter("nombreCompleto"); 
                        String correoElectronico=request.getParameter("correoElectronico"); 
                        String numeroCelular=request.getParameter("numeroCelular"); 
                        String servicioSolicitado=request.getParameter("servicioSolicitado");                         
                    %>                        

                    <!-- TABLA DE SOLICITUD-->
                    <div class="random-div">
                        <h2 class="mb-2 text-info">Datos de la solicitud</i></h2>

                        <div class="alert alert-info" role="alert">                                                                                                         
                            <table class="table text-info mb-0">
                                <tr><td><strong>Nombres y Apellidos:</strong></td><td><%= nombreCompleto %></td></tr>
                                <tr><td><strong>Electrónico:</strong></td><td><%= correoElectronico %></td></tr>
                                <tr><td><strong>Número de Celular:</strong></td><td><%= numeroCelular %></td></tr>
                                <tr><td><strong>Servicio Solicitado:</strong></td><td><%= servicioSolicitado %></td></tr>
                            </table>                                         
                        </div>                                        
                        <%
                            // Parámetros de conexión a la base de datos (ajusta estos valores)
                            String url = "jdbc:mysql://192.168.20.26:3306/formulario";
                            String usuario = "formulario";
                            String contraseña = "formulario";
                        
                            Connection conexion = null;
                            PreparedStatement consulta = null;

                            try {
                                // Conexión a la base de datos
                                Class.forName("com.mysql.jdbc.Driver");
                                conexion = DriverManager.getConnection(url, usuario, contraseña);
                                                        
                                // Consulta SQL para insertar los datos en la base de datos
                                String sql = "INSERT INTO solicitudes (nombre_completo, correo, celular, servicio) VALUES (?, ?, ?, ?)";
                        
                                // Preparar la consulta
                                consulta = conexion.prepareStatement(sql);
                                consulta.setString(1, nombreCompleto);
                                consulta.setString(2, correoElectronico);
                                consulta.setString(3, numeroCelular);
                                consulta.setString(4, servicioSolicitado);
                        
                                // Ejecutar la consulta
                                consulta.executeUpdate();
                        
                                // Cerrar la consulta
                                consulta.close();                              
                                
                                %>                                
                                    <div class="alert alert-success mb-2"><i class="bi bi-check-circle-fill"></i> Los datos se han guardado correctamente.</div>
                                <%
                            } catch (Exception e) {
                                %>                                
                                    <div class="alert alert-danger mb-2"><i class="bi bi-database-x"></i> Error al guardar los datos: <%= e.getMessage() %></div>
                                <%
                            } finally {
                                try {
                                    if (consulta != null) consulta.close();                                    
                                } catch (SQLException e) {
                                    %>                                
                                        <div class="alert alert-danger mb-2"><i class="bi bi-database-x"></i> Error al cerrar la conexión: <%= e.getMessage() %></div>
                                    <%
                                }
                            }

                            %> 

                        <div class="alert alert-light mt-3" style="margin-bottom: 100px" role="alert">                           
                            <i class="bi bi-clock-history"></i>
                            <b>HISTORIAL:</b> Listado de solicitudes anteriores                                       
                            <!-- TABLA SOLICITUDES EN BASE DE DATOS-->                
                            <table class="table table-bordered table-striped mt-4">
                                <thead>
                                    <tr>
                                      <th scope="col">Nombre Completo</th>
                                      <th scope="col">Correo</th>
                                      <th scope="col">Celular</th>
                                      <th scope="col">Servicio</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <%

                                    Statement query = null;
                                    ResultSet resultado = null;

                                    try {
                                        if(conexion != null){
                                            // Realizar la consulta SQL
                                            String sql = "SELECT nombre_completo, correo, celular, servicio FROM solicitudes where estado=1";
                                            query = conexion.createStatement();
                                            resultado = query.executeQuery(sql);

                                            // Iterar a través de los resultados y mostrar los datos
                                            while (resultado.next()) {
                                                String nombre = resultado.getString("nombre_completo");
                                                String correo = resultado.getString("correo");
                                                String celular = resultado.getString("celular");
                                                String servicio = resultado.getString("servicio");
                                    %>
                                                <tr>
                                                <th scope="row"><%= nombre %></th>
                                                <td><%= correo %></td>
                                                <td><%= celular %></td>
                                                <td><%= servicio %></td>
                                                </tr>
                                    <%  
                                            }
                                        }
                                    } catch (Exception e) {
                                        %>                                
                                            <div class="alert alert-danger mb-2 mt-2"><i class="bi bi-database-x"></i> Error al consultar el historial: <%= e.getMessage() %></div>
                                        <%
                                    } finally {
                                        try {
                                            if (resultado != null) resultado.close();
                                            if (query != null) consulta.close();
                                            if (conexion != null) conexion.close();
                                        } catch (SQLException e) {
                                            %>                                
                                                <div class="alert alert-danger mb-2"><i class="bi bi-database-x"></i> Error al cerrar la conexión: <%= e.getMessage() %></div>
                                            <%
                                        }
                                    }
                                    %>
                                  </tbody>
                            </table>
                        </div>
                    </div>                   


                </div>

                
            </main>

            <!-- Pie de Página -->
            <footer class="bg-dark text-light py-3 fixed-bottom">
                <div class="container text-center">
                    &copy; 2023 Gasy Sport
                </div>
            </footer>

        </div>
        
        </script>
    </body>

    </html>