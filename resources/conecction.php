<?php
include_once '../constants.php';
class Connection {

    function get_connection() {
        try {
            $conn = new PDO("mysql:host=".bd_server.";dbname=easy_db", "user2", "Zm6oFX5Qt6bxqd3");
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo 'ERROR: ' . $e->getMessage();
        }
        return $conn;
    }
}
