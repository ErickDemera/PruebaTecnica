<?php
require_once('fpdf/fpdf.php'); // Ajusta la ruta según la ubicación de tu archivo fpdf.php
include 'config.php';

// Creamos una nueva instancia de FPDF
$pdf = new FPDF();

// Establecemos los metadatos del PDF
$pdf->SetTitle('Reporte de Asistencia');
$pdf->SetAuthor('Nombre del Autor');

// Agregamos una página al PDF
$pdf->AddPage();

// Establecemos el contenido del PDF
$pdf->SetFont('Arial', 'B', 16);
$pdf->Cell(0, 10, 'Reporte de Asistencia', 0, 1, 'C');
$pdf->Ln(10);

$sql = "SELECT * FROM attendance";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(0, 10, "Nombre: " . utf8_decode($row["employee_name"]). " - Acción: " . utf8_decode($row["action"]). " - Fecha: " . $row["timestamp"], 0, 1);
    }
} else {
    $pdf->SetFont('Arial', '', 12);
    $pdf->Cell(0, 10, "No hay registros de asistencia.", 0, 1);
}

// Cerramos el PDF y lo generamos para su descarga
$pdf->Output('reporte_asistencia.pdf', 'D');
exit;
?>
