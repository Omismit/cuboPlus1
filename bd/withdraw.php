<?php
session_start();
require('conexion.php');
if (!isset($_SESSION['iduser'])) {
  header('location: ../index.html');
  exit();
}

$sql =  "SELECT satsBalance FROM balances WHERE iduser = ".$_SESSION['iduser'];
$result = mysqli_query($miconexion, $sql);

?>