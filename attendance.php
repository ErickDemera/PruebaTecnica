<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $employeeName = $_POST["employee_name"];
    $action = $_POST["action"];
    
    $sql = "INSERT INTO attendance (employee_name, action) VALUES ('$employeeName', '$action')";
    
    if ($conn->query($sql) === TRUE) {
        echo "Registro de asistencia realizado con éxito.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>