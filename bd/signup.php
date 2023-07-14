<?php
session_start();
require('conexion.php');
extract($_REQUEST);
$nombre = $_POST["firstName"];
$apellido = $_POST["lastName"];
$email = $_POST["email"];
$pass = $_POST["pass"];
$pass2 = $_POST["pass2"];

if ($pass == $pass2) {
  $mysql = "call insert_user('$nombre', '$apellido', '$email', '$pass',@valido)";
  $consulta = mysqli_query($miconexion, $mysql);

  if ($consulta) {
    // La inserción fue exitosa
    header("Location: ../index.html");
    exit();
  } else {
    // Hubo un error en la inserción
    echo "Error en la inserción: " . mysqli_error($miconexion);
  }
} else {
  
  $archivo = '../signup.html'; // Ruta al archivo HTML

  // Leer el contenido actual del archivo HTML
  $contenido = file_get_contents($archivo);

  // Modificar el contenido según tus necesidades
  $contenidoModificado = str_replace('', 'Hola a todos', $contenido);

  // Escribir el contenido modificado en el archivo HTML
  file_put_contents($archivo, $contenidoModificado);

  //header('Location: ../signup.html');*/
  exit();
}
?>