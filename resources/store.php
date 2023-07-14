<?php

session_start();
if (!isset($_SESSION['iduser'])) {
    header('location: ../index.html');
}
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include_once './conecction.php';

$connection = new Connection();
$conexion = $connection->get_connection();

$case = $_POST['type'];
switch ($case) {
    case 1:///get information of balances and funds from the user
        ///get the balance of user how was sending
        $sql1 = "select fiatBalance,satsBalance,idtypeFiat from balances where iduser=?;";
        $query = $conexion->prepare($sql1);
        $query->execute(array($_SESSION['iduser']));
        $result = $query->fetch(PDO::FETCH_ASSOC);
        echo json_encode(array("response" => TRUE, "data" => $result));
        break;
    case 2:////prepare the information of balance,fees and result of the sending
        $reponse = FALSE;
        $amount = $_POST['val1']; //amount on USD to send
        $receiver = $_POST['val2']; //iduser of receiver
        ////get the current balance
        $sql1 = "select fiatBalance,satsBalance,idtypeFiat from balances where iduser=?;";
        ///check if the receiver exist
        $sql2 = "select count(*) from users where iduser=$receiver;";
        $query = $conexion->prepare($sql1);
        $query->execute(array($_SESSION['iduser']));
        $senderD = $query->fetch(PDO::FETCH_ASSOC);
        $balance = $senderD['fiatBalance'];
        if (($balance - $amount) < 0) {///not enough USD
            echo json_encode(array("response" => $reponse, "msg" => "Your assets are not enough for the send."));
            break;
        }
        $query2 = $conexion->query($sql2);
        $count = $query2->fetchColumn();
        if(''){}
        break;
    case 3://sending funds
        break;
    case 4:///
        break;
    default:
        break;
}
