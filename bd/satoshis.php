<?php 
session_start();
require('conexion.php');
if (!isset($_SESSION['iduser'])) {
  header('location: ../index.html');
  exit();
}

$sql =  "SELECT satsBalance FROM balances WHERE iduser = ".$_SESSION['iduser'];
$result = mysqli_query($miconexion, $sql);

if ($result) {
  $row = mysqli_fetch_assoc($result);
  $satsBalance = $row['satsBalance'];
  echo json_encode(array('satsBalance' => ($satsBalance)));
  exit();
} else {
  echo json_encode(array('error' => 'Error en la consulta'));
  exit();
}
?>