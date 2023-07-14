<?php
session_start();
if (!isset($_SESSION['iduser'])) {
    header('location: ../index.html');
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Easy Remittance</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link rel="icon" href="https://icons.veryicon.com/png/o/business/blockchain-commerce/lightning-network.png">
  <link rel="stylesheet" href="../styles/styles.css">
</head>
<body>
  <nav class="navbar navbar-expand-md navbar-light fixed-top custom-navbar">
    <a class="navbar-brand" href="dashboard.php" style="color:#e6e6e6;"><img src="../img/ln.png" alt="Logo" style="width: 48px;height: 48px;margin-right:10px;">Easy Remittance</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <span class="navbar-text" id="user-name-bar" style="color:#e6e6e6;padding-right:20px;">
          <?php echo $_SESSION['user']; ?>
          </span>
        </li>
        <li class="nav-item">
          <button class="btn btn-primary custom-btn" onclick="location.href = './logout.php';">Cerrar sesión</button>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container mt-5" >
    <div class="row">
      <div class="col">
        <div class="d-flex align-items-center flex-column">
            <img src="../img/ln.png" id="user-image" alt="Foto de usuario" class="user-photo">
            <h2 id="user-name"><?php echo $_SESSION['name']." ".$_SESSION['lastname']; ?></h2>
            <p id="user"><?php echo $_SESSION['user']; ?></p>
            <div class="input-group input-group-lg d-flex justify-content-center">
                <span class="input-group-text" id="balance1" style="font-size: 24px;">Balance : $</span>
                <span class="input-group-text" id="sats" style="font-size: 24px;">1,000,000.00</span>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="center">
          <div class="d-flex justify-content-between">
            <a href="inicio.php" class="button-link">
              <div class="circle-button">
                <img src="../img/inicio.png" alt="Inicio">
                <p>Inicio</p>
              </div>
            </a>
            <a href="depositar.php" class="button-link">
              <div class="circle-button">
                <img src="../img/depositar.png" alt="Depositar">
                <p>Depositar</p>
              </div>
            </a>
            <a href="enviar.php" class="button-link">
              <div class="circle-button">
                <img src="../img/enviar.png" alt="Enviar">
                <p>Enviar</p>
              </div>
            </a>
            <a href="recibir.php" class="button-link">
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
