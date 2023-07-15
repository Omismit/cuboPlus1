<?php
include_once '../constants.php';
$servidor ="192.168.0.105";
$base ="easy_db";
$usuario="user2";
$contra ="Zm6oFX5Qt6bxqd3";


$miconexion = mysqli_connect(bd_server,$usuario,$contra,$base);

if($miconexion){
	//echo "Conexion existosa";
}else{
	echo "Conexion fallida";
	echo "Error: ".mysqli_connect_error();
}

?>