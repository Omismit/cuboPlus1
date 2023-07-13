<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include_once './conecction.php';

$connection = new Connection();
$conexion = $connection->get_connection();

$case = $_POST['type'];
switch ($case) {
    case 1:
        $user = $_POST['val1'];
        $pass = $_POST['val2'];
        $response = FALSE;
        $Sql1 = "Select iduser,name,lastname from easy_db.users where email like ? and password like sha1(?);";
        $query = $conexion->prepare($Sql1);
        $query->execute(array($user, $pass));
        if ($data = $query->fetch()) {
            $response = TRUE;
            session_start();
            $_SESSION['iduser'] = $data['iduser'];
            $_SESSION['name'] = $data['name'];
            $_SESSION['lastname'] = $data['lastname'];
            $_SESSION['user'] = $user;
            echo json_encode(array("response" => $response));
        } else {
            echo json_encode(array("response" => $response));
        }
        break;

    default:
        break;
}