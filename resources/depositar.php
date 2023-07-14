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
    <a class="navbar-brand" href="balance.php" style="color:white;"><img src="../img/ln.png" alt="Logo" style="width: 48px;height: 48px;margin-right:10px;">Easy Remittance</a>
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

 

<div class="container mt-5" >
    <div class="row">
      <div class="col">
        <div class="d-flex align-items-center flex-column" style="margin-top:72px;">
            


                <img src="../img/fix.jpg" class="card-img-top" alt="qr-code" style="width: 256px;height: 256px;margin-left:16px;">
  

                
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