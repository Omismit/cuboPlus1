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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css">
        <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
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

        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="d-flex align-items-center flex-column" style="margin-top: 72px;">
                        <h3>Send remittance</h3>
                        <div class="text-center mt-5">

                            <div class="input-group input-group-lg d-flex mb-0">
                                <span class="input-group-text" id="balance1" style="font-size: 18px;font-weight:bold;">Available balance : $</span>
                                <span class="input-group-text" id="sats" style="font-size: 18px;font-weight:bold;">100.00</span>
                            </div>

                        </div>
                        <div class="text-center mt-4">
                            <form id="saldoForm" action="balance.php" method="POST">
                                <div class="form-group">
                                    <input type="number" class="form-control form-control-lg" placeholder="Enter an amount" id="cantidadEnviar">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-lg" placeholder="Search for user" id="usernameInput" readonly>
                                    <select class="js-example-basic-single" name="users" style="width: 300px;" id="users">
                                        <option value="1">Edgar</option>
                                        <option value="2">Rodrigo</option>
                                        <option value="3">Oswaldo</option>
                                    </select>

                                </div>
                                <button class="btn btn-primary" id="searchBtn">Search</button>
                                <br>
                                <br>
                                <button type="submit" class="btn btn-primary btn-block" id="sendBtn">Send remittance</button>
                            </form>
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
<!-- Ventana modal -->
<div class="modal fade" id="userModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Detalles de usuario</h5>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="userId">ID:</label>
                    <input type="text" class="form-control" id="userId">
                </div>
                <div class="form-group">
                    <label for="userName">Nombre:</label>
                    <input type="text" class="form-control" id="userName">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="selectBtn">Seleccionar</button>
            </div>
        </div>
    </div>
</div>
<!-- Ventana modal -->

<!-- Modal de confirmación -->
<div class="modal fade" id="confirmModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Confirmar envío</h5>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <p id="confirmationMessage"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="confirmYes">Sí</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal de confirmación -->


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="../js/send.js"></script>
<script>
    $(document).ready(function () {
        loading_balance();
        loading_search_user();
        $('#searchBtn').click(function (e) {
            e.preventDefault(); // Evita el comportamiento predeterminado del botón
            $('#userModal').modal('show');
        });

        $('#selectBtn').click(function () {
            var userId = $('#userId').val();
            var userName = $('#userName').val();
            console.log('ID:', userId);
            console.log('Nombre:', userName);
            $('#userModal').modal('hide');

            // Asignar valor de userName al input text de username
            $('#usernameInput').val(userName);
        });
        $('#sendBtn').click(function (e) {
            e.preventDefault();
            $('#confirmModal').modal('show');
            var cantidad = $('#cantidadEnviar').val();
            $('#confirmationMessage').text("¿Are you sure you want to send  $" + cantidad + " Sats ?");
        });

        $('#confirmYes').click(function () {
            window.location.href = "dashboard.php";
        });
        $('.js-example-basic-single').select2();
    });
</script>
</body>
</html>
