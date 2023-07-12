<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Navbar Sticky Top</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link rel="icon" href="https://icons.veryicon.com/png/o/business/blockchain-commerce/lightning-network.png">
  <style>
    body{
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .user-photo {
      width: 128px;
      height: 128px;
      border-radius: 50%;
      object-fit: cover;
      margin-bottom: 10px;
    }

    .circle-button {
      width: 60px;
      height: 60px;
      border-radius: 50%;
      text-align: center;
      padding-top: 10px;
    }

    .circle-button img {
      max-width: 30px;
      max-height: 30px;
    }

    .center {
      text-align: center;
    }

    .button-link {
      display: inline-block;
      text-decoration: none;
      color: inherit;
    }

    .custom-navbar {
      background-color: #0788ff; /* Cambia el color aquí */
    }

    .custom-btn {
      background-color: #9E4C00; /* Cambia el color aquí */
    }

  </style>
</head>
<body>
  <nav class="navbar navbar-expand-md navbar-light fixed-top custom-navbar">
    <a class="navbar-brand" href="#" style="color:white;"><img src="../img/ln.png" alt="Logo" style="width: 48px;height: 48px;margin-right:10px;">Easy Remittance</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <span class="navbar-text" style="color:white;padding-right:20px;">
            Usuario
          </span>
        </li>
        <li class="nav-item">
          <button class="btn btn-danger custom-btn">Cerrar sesión</button>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container mt-5" >
    <div class="row">
      <div class="col">
        <div class="d-flex align-items-center flex-column">
            <img src="../img/ln.png" alt="Foto de usuario" class="user-photo">
            <h2>Nombre de usuario 1</h2>
            <p>@Usuario</p>
            <div class="input-group input-group-lg d-flex justify-content-center">
                <span class="input-group-text" id="balance1" style="font-size: 24px;">Balance : $</span>
                <span class="input-group-text" id="balance2" style="font-size: 24px;">0.00</span>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="center">
          <div class="d-flex justify-content-between">
            <a href="inicio.html" class="button-link">
              <div class="circle-button">
                <img src="../img/inicio.png" alt="Inicio">
                <p>Inicio</p>
              </div>
            </a>
            <a href="depositar.html" class="button-link">
              <div class="circle-button">
                <img src="../img/depositar.png" alt="Depositar">
                <p>Depositar</p>
              </div>
            </a>
            <a href="enviar.html" class="button-link">
              <div class="circle-button">
                <img src="../img/enviar.png" alt="Enviar">
                <p>Enviar</p>
              </div>
            </a>
            <a href="recibir.html" class="button-link">
              <div class="circle-button">
                <img src="../img/recibir.png" alt="Recibir">
                <p>Recibir</p>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>