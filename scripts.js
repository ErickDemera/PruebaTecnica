document.addEventListener("DOMContentLoaded", function() {
    const attendanceForm = document.getElementById("attendance-form");
    const employeeNameInput = document.getElementById("employee-name");
    const clockInBtn = document.getElementById("clock-in-btn");
    const clockOutBtn = document.getElementById("clock-out-btn");
    const attendanceList = document.getElementById("attendance-ul");
    const generateReportBtn = document.getElementById("generate-report-btn");

    // Función para registrar la entrada o salida de un empleado
    function registerAttendance(type) {
        const employeeName = employeeNameInput.value.trim();
        if (employeeName !== "") {
            const currentTime = new Date().toLocaleTimeString();
            const li = document.createElement("li");
            li.textContent = `${employeeName} - ${type} - ${currentTime}`;
            attendanceList.appendChild(li);

            // Envía los datos al servidor (puedes utilizar AJAX aquí)
            // En este ejemplo, asumo que el servidor está procesando en 'procesar.php'
            fetch('procesar.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: `employee_name=${employeeName}&action=${type}`,
            })
            .then(response => response.text())
            .then(data => console.log(data)) // Muestra la respuesta del servidor (puedes ajustarlo según tus necesidades)

            employeeNameInput.value = "";
        } else {
            alert("Por favor, ingresa el nombre del empleado.");
        }
    }

    // Evento al hacer clic en el botón de entrada
    clockInBtn.addEventListener("click", function() {
        registerAttendance("Entrada");
    });

    // Evento al hacer clic en el botón de salida
    clockOutBtn.addEventListener("click", function() {
        registerAttendance("Salida");
    });

    // Resto del código...
});
