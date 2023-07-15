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
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css">
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



        <div class="container mt-5" >
            <div class="row">
                <div class="col-12">
                    <div>
                        <table class="table table-hover table-striped" id="tx">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">Type</th>
                                    <th scope="col">Sender</th>
                                    <th scope="col">Receiver</th>
                                    <th scope="col">date</th>
                                    <th scope="col">Fiat</th>
                                    <th scope="col">Sats</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                            </tbody>
                        </table>      
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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
<script>
            $(document).ready(function () {
                getTx();
                new DataTable('#tx', {
                    responsive: true,
                    paging: true,
                    scrollY: 400,
                    searching: false
                });
            });

            function getTx() {
                var tr = "";
                var color="";
                $.ajax({
                    method: "POST",
                    url: "store.php",
                    dataType: "json",
                    data: {type: "5"},
                    success: function (data) {
                        if (data['response']) {
                            $.each(data["data"], function (index, value) {
                                if(value['typeTx']==="recharge"){
                                    color="style='background-color:#97dd97'";
                                }else{
                                    color="style='background-color:#f55050'";
                                }
                                tr += '<tr '+color+'><td>' + value["typeTx"] + '</td><td>' + value["nameSender"] + ' ' + value["lastnameSender"] + '</td>\n\
                            <td>' + value["nameReceiver"] + ' ' + value["lastnameReceiver"] + '</td><td>' + value["date"] + '</td>\n\
                            <td>' + value["fiat"] + '</td><td>' + value["sats"] + '</td></tr>';

                            });
                            $("#tx > tbody").html(tr);
                        } else {
                            $("#alert1").show();
                        }
                    },
                    error: function () {
                    }
                });
            }

</script>




</body>
</html>
