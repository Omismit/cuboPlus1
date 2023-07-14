<?php
session_start();
require('conexion.php');
if (!isset($_SESSION['iduser'])) {
  header('location: ../index.html');
  exit();
}

$sql =  "call withdraw_assets(".$_SESSION['iduser'].")";
$result = mysqli_query($miconexion, $sql);

?>