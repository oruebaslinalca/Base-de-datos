<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "EquiposComputo";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$tipo = $_POST['tipo'];
$marca = $_POST['marca'];
$modelo = $_POST['modelo'];
$numero_serie = $_POST['numero_serie'];
$fecha_adquisicion = $_POST['fecha_adquisicion'];
$precio = $_POST['precio'];

$sql = "INSERT INTO Dispositivos (tipo, marca, modelo, numero_serie, fecha_adquisicion, precio)
VALUES ('$tipo', '$marca', '$modelo', '$numero_serie', '$fecha_adquisicion', '$precio')";

if ($conn->query($sql) === TRUE) {
    $last_id = $conn->insert_id;
    
    if ($tipo == 'Portátil') {
        $ram = $_POST['ram_portatil'];
        $procesador = $_POST['procesador_portatil'];
        $disco_duro = $_POST['disco_duro_portatil'];
        
        $sql = "INSERT INTO Portatiles (dispositivo_id, ram, procesador, disco_duro)
                VALUES ('$last_id', '$ram', '$procesador', '$disco_duro')";
    } elseif ($
