<!DOCTYPE html>
<html lang="es" class="h-100">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Los 4 fantaticos</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>

<body class="d-flex h-100">


  <div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">

    <!-- Barra de Navegación -->
    <header class="d-flex flex-wrap py-2 pt-3 pt-md-2 pb-1 pb-md-3 ps-3 fixed-top bg-dark">
      <a href="#inicio"
        class="ms-md-5 d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
        <span class="fs-4 text-light">Los 4 fantasticos</span>
      </a>
    </header>


    <main class="row h-100 justify-content-center align-items-center pt-5 pb-5">
      <div class="col-md-8 mt-5 mb-5">
        <h4 class="mb-3">Formulario</h4>
        <form class="needs-validation mb-5" action="resultado.jsp" method="post" novalidate>

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="nombre" class="form-label">Nombre</label>
              <input type="text" class="form-control" id="nombre" name="nombre" placeholder="" required>
              <div class="invalid-feedback">
                Digita tu nombre...
              </div>
            </div>

            <div class="col-md-6">
              <label for="nombre" class="form-label">Apellidos</label>
              <input type="text" class="form-control" id="apellido" name="apellido" placeholder="" required>
              <div class="invalid-feedback">
                Digita tu apellido...
              </div>
            </div>

            <div class="col-md-12">
              <label for="apodo" class="form-label">Apodo</label>
              <input type="text" class="form-control" id="apodo" name="apodo" placeholder="" required>
              <small class="text-body-secondary">Como te dicen tus amigos!</small>
              <div class="invalid-feedback">
                Falta tu apodo...
              </div>
            </div>

            <div class="col-6">
              <label for="cabello" class="form-label">Color de Cabello</label>
              <input type="text" class="form-control" id="cabello" name="cabello" placeholder="" required>
              <div class="invalid-feedback">
                Falta tu color de cabello...
              </div>
            </div>

            <div class="col-6">
              <label for="cabello" class="form-label">Color de Ojos</label>
              <input type="text" class="form-control" id="ojos" name="ojos" placeholder="" required>
              <div class="invalid-feedback">
                Falta tu color de ojos...
              </div>
            </div>

            <div class="col-6">
              <label for="edad" class="form-label">Edad</label>
              <input type="number" class="form-control" id="edad" name="edad" placeholder="" required>
              <div class="invalid-feedback">
                Falta tu edad...
              </div>
            </div>

            <div class="col-6" >
              <label for="hobby" class="form-label">Hobby</label>
              <input type="text" class="form-control" id="hobby" name="hobby" placeholder="" required>
              <small class="text-body-secondary">Solo uno!</small>
              <div class="invalid-feedback">
                Falta tu Hobby...
              </div>
            </div>
          </div>

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg mb-5" type="submit">Continuar</button>          
          
        </form>
        
      </div>


    </main>

    <!-- Pie de Página -->
    <footer class="bg-dark text-light py-3 fixed-bottom">
      <div class="container text-center">
        &copy; 2023 Los 4 fantasticos
      </div>
    </footer>

  </div>

  <!-- Scripts de Bootstrap (desde CDN) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
  <script src="./js/validate.js"></script>

</body>

</html>