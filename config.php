<?php
// Configuración de la conexión a la base de datos
$servername = "localhost"; // Cambiar si es necesario
$username = "root";
$password = "";
$database = "attendance_db";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);

} else{
    "Conexión exitosa";
}
?>