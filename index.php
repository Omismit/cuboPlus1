<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="https://icons.veryicon.com/png/o/business/blockchain-commerce/lightning-network.png">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="styles/styles.css">
  
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-2 text-center"></div>
      <div class="col-8 text-center">
        <h1>Easy Remittance</h1>
        <!-- <h1 id="display">$ 0.00</h1> -->

        <div class="row justify-content-center">
          <div class="col-md-8 col-12 text-center">

          <div class="input-group input-group-lg">
            <span class="input-group-text" id="sign1">$</span>
            <input type="number" class="form-control" id="display" style="text-align: center;" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
            <span class="input-group-text" id="sign2">USD</span>
          </div>

          </div>
        </div>

        <br>
        <div class="row justify-content-center">
          <div class="col-8 text-center">
          
            <button class="btn btn-success btn-block" onclick="convert()">Convertir</button>
          
          </div>
        </div>
        

        <h3> 0000 sats</h3>
      </div>
      <div class="col-2 text-center"></div>
    </div>
    
  </div>

  <script src="js/javascript.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
