<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $employeeName = $_POST["employee_name"];
    $action = $_POST["action"];
    $timestamp = date("Y-m-d H:i:s"); // Obtiene la fecha y hora actual
    
    $sql = "INSERT INTO attendance (employee_name, action, timestamp) VALUES ('$employeeName', '$action', '$timestamp')";
    
    if ($conn->query($sql) === TRUE) {
        echo "Registro de asistencia realizado con éxito.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>