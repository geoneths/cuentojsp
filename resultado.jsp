<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es" class="h-100">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Los 4 fantasticos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    </head>
   

    <body class="d-flex h-100">

        <div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">

            <!-- Barra de Navegación -->
            <header class="d-flex flex-wrap py-2 pt-3 pt-md-2 pb-1 pb-md-3 ps-3 fixed-top bg-dark">
                <a href="/cuento"
                    class="ms-md-5 d-flex align-items-center mb-3 mb-md-0 me-md-auto  link-body-emphasis text-decoration-none">
                    <span class="fs-4 text-info">Volver</span>
                </a>

                <a href="#inicio"
                    class="ms-md-5 ms-3 d-flex align-items-center mb-3 mb-md-0 me-md-5 link-body-emphasis text-decoration-none">
                    <span class="fs-4 text-light">Los 4 fantasticos</span>
                </a>
            </header>
            <main class="row h-100 justify-content-center align-items-center pt-5 pb-5 mb-5">
                <div class="container mt-5 col-md-10">                    
                    <% 
                        String nombre=request.getParameter("nombre"); 
                        String apellido=request.getParameter("apellido"); 
                        String apodo=request.getParameter("apodo"); 
                        String edad=request.getParameter("edad"); 
                        String ojos=request.getParameter("ojos"); 
                        String cabello=request.getParameter("cabello");                         
                        String hobby=request.getParameter("hobby"); 
                    %>                        

                    <!-- CUENTO 1-->
                    <div class="random-div">
                        <h2 class="mb-4 text-info">El Sueño Cumplido <i class="bi bi-moon-stars-fill"></i></h2>

                        <div class="alert alert-info" role="alert">                                                                             
                            <p class="lh-lg"> 
                                Había una vez una persona llamada <b><%= nombre %> <%= apellido %></b>, a quien le gustaba que le llamaran <u><%= apodo %></u>.
                                <br>Tenía ojos <u><%= ojos %></u> que brillaban y un hermoso cabello de tono <u><%= cabello %></u>. 
                                <br>
                                <br>Aunque tenía <u><%= edad %></u> años, su espíritu estaba lleno de juventud. <u><%= hobby %></u> era su pasatiempo favorito .
            
                                <br>Un día, <b><%= nombre %></b> tuvo un sueño extraordinario en el que volaba entre las estrellas, había soñado que era Astronauta. 
                                <br>A partir de ese día, <b><%= nombre %></b> se dispuso a hacer ese sueño realidad. 
                                <br>
                                <br>Aventura tras aventura, <b><%= apodo %></b> finalmente logró su objetivo y descubrió que las estrellas es lo más hermoso que jamás había visto, 
                                pero sobre todo aprendió que los <b>sueños pueden convertirse en realidad</b> si uno se lo propone.
                            </p>
                        </div>
                        <br>                        

                        <div class="alert alert-light mb-md-0" style="margin-bottom: 100px" role="alert">
                            <i class="bi bi-bookmark-heart-fill text-danger"></i>
                            <b>RECUERDA:</b> Nunca olvides luchar por tu Sueños!
                        </div>
                    </div>                   


                </div>

                
            </main>

            <!-- Pie de Página -->
            <footer class="bg-dark text-light py-3 fixed-bottom">
                <div class="container text-center">
                    &copy; 2023 Los 4 fantaticos
                </div>
            </footer>

        </div>
        
        
    </body>

    </html>