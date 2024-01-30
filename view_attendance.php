<?php
include 'config.php';

$sql = "SELECT * FROM attendance";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "Nombre: " . $row["employee_name"]. " - Acción: " . $row["action"]. " - Fecha: " . $row["timestamp"]. "<br>";
    }
} else {
    echo "No hay registros de asistencia.";
}
?>