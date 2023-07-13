<?php
require('conexion.php');

$nombre = $_POST["firstName"];
$apellido = $_POST["lastName"];
$email = $_POST["email"];
$pass = $_POST["pass"];
$pass2 = $_POST["pass2"];

$mysql = "call insert_user('$nombre', '$apellido', '$email', '$pass',@valido)";
$consulta = mysqli_query($miconexion, $mysql);

if ($consulta) {
  // La inserción fue exitosa
  header('Location: ../index.html');
  exit();
} else {
  // Hubo un error en la inserción
  echo "Error en la inserción: " . mysqli_error($miconexion);
}
?>