<?php
session_start();
if (!isset($_SESSION['iduser'])) {
    header('location: ../index.html');
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Easy Remittance</title>
  <link rel="stylesheet" type="text/css" href="../styles/payout.css">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Courgette&display=swap');
  </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
          <button class="btn btn-primary custom-btn" onclick="location.href = 'logout.php';">Cerrar sesión</button>
        </li>
      </ul>
    </div>
  </nav>
  
  <div id="body">
    <h2 id="title">Add a payment method</h2>
    <div class="image-section">
        <img src="../img/creditcards.png" alt="Payment Image" class="payment-image">
      </div>
    <div class="input-section">
      <h3>Personal information</h3>
      <div class="input-group animated-input">
        <input type="text" id="name" required>
        <label for="name">Name and surname</label>
      </div>
      <div class="input-group animated-input">
        <input type="email" id="email" required>
        <label for="email">Email address</label>
      </div>
      <div class="input-group animated-input">
        <input type="text" id="country" required>
        <label for="country">Country</label>
      </div>
      <div class="input-group animated-input">
        <input type="text" id="state" required>
        <label for="state">State/Department</label>
      </div>
      <div class="input-group animated-input"> 
        <input type="text" id="city" required>
        <label for="city">City</label>
      </div>
    </div>
    
    <div class="input-section">
      <h3>Payment information</h3>
      <div class="input-group animated-input">
        <input type="number" id="card-number" required>
        <label for="card-number">Card number</label>
      </div>
      <div class="input-group animated-input">
        <input type="number" id="cvv" required>
        <label for="cvv">CVV</label>
      </div>
      <div class="input-group animated-input">
        <input type="text" id="expiration" required>
        <label for="expiration">Expiration date</label>
      </div>
      <div class="input-group animated-input">
        <input type="number" id="amount" required>
        <label for="amount">Amount to recharge</label>
      </div>
    </div>
            <button id="btn-recargar" type="button" onclick="addAssents();" class="btm">Recharge</button>
	    <button id="btn-recargar " type="button" class="btm" style="background-color:red">Decline</button>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>
        <script src="js/payout.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    </body>
</html>



