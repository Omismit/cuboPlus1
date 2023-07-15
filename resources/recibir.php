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
  <script src="../qrcode.min.js" defer></script>
  <script src="../code.js" defer> </script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link rel="icon" href="https://icons.veryicon.com/png/o/business/blockchain-commerce/lightning-network.png">
  <link rel="stylesheet" href="../styles/styles.css">
 
</head>
<body>
  <nav class="navbar navbar-expand-md navbar-light fixed-top custom-navbar">
    <a class="navbar-brand" href="dashboard.php" style="color:white;"><img src="../img/ln.png" alt="Logo" style="width: 48px;height: 48px;margin-right:10px;">Easy Remittance</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <span class="navbar-text" style="color:white;padding-right:20px;">
          <?php echo $_SESSION['user']; ?>
          </span>
        </li>
        <li class="nav-item">
          <button class="btn btn-primary custom-btn" onclick="location.href = './logout.php';">Cerrar sesión</button>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container mt-5" id="con-error">
  <div class="col-12" id="errorMsj">
    <div class="row justify-content-center">
      <h1 id="msj">
        ERROR: insufficient sats
      </h1>
    </div>
    <div class="row justify-content-center">
      <button type="button" class="btn btn-dark" id="errorReturn">Return</button>
    </div>
  </div>
</div>


<div class="container mt-5" id="con-success" >
  <div class="col-12" id="succMsj">
    <div class="row justify-content-center">
      <h1 class="pb-1">
       SUCCESSED
      </h1>
    </div class="row justify-content-center">
      <button type="button" class="btn btn-dark" id="succReturn">Return</button>
    </div>
  </div>
</di>

<div class="container mt-5" id="contenedor" >
    <div class="row">
      <div class="col">
        <div class="d-flex align-items-center flex-column" style="margin-top:72px;margin-right:5px;">
            <div class="card custom-card" style="width: 19rem; border-width: 2px;border-color: black;">
                <!--div class="suc">Transaction completed</div-->
                <div id="qr" class="card-img-top" style="margin-right:20px;margin-left:24px;margin-top:24px;"></div>
                <div class="card-body">
                    <h5 class="card-title">Address</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-primary" id="createQR">Copiar</a>
                </div>
            </div>
       </div>
      </div>
    </div>
</div>
        <br>
        <br>
        <br>
      </div>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
