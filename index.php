<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="https://icons.veryicon.com/png/o/business/blockchain-commerce/lightning-network.png">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="styles/styles.css">
  <script src="code.js" defer></script>
  <script src="qrcode.min.js" defer></script>
  <script type='module' src='bd.js' defer></script>
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-12 text-center">
        <h1>Remesas</h1>
      </div>
    
      <div class="container col-12 ">
     
    <div class="col-md-4 text-center">
    <input type="number" placeholder="typing the amount you wanna insert" id="sats">
    </div>
    <div class="col-md-4 text-center">
    <input type="text" placeholder="Write a description" id="desc">
    </div>
    <div class="col-md-4 text-center">
    <input type="submit" value='enviar' id="enviar">
    </div>
      </div>

      <div class="col-md-4 text-center">
    <input type="button" value='Crear QR' id="createQR">
    </div>

    <div id="qr"></div>
<br>




    </div>
    <div class="row button-container">
      <div class="col-md-4">
        <button class="btn btn-success btn-block">1</button>
      </div>
      <div class="col-md-4">
        <button class="btn btn-success btn-block">2</button>
      </div>
      <div class="col-md-4">
        <button class="btn btn-success btn-block">3</button>
      </div>
    </div>
    <div class="row button-container">
      <div class="col-md-4">
        <button class="btn btn-success btn-block">4</button>
      </div>
      <div class="col-md-4">
        <button class="btn btn-success btn-block">5</button>
      </div>
      <div class="col-md-4">
        <button class="btn btn-success btn-block">6</button>
      </div>
    </div>
    <div class="row button-container">
      <div class="col-md-4">
        <button class="btn btn-success btn-block">7</button>
      </div>
      <div class="col-md-4">
        <button class="btn btn-success btn-block">8</button>
      </div>
      <div class="col-md-4">
        <button class="btn btn-success btn-block">9</button>
      </div>
    </div>
  </div>
</body>
</html>
