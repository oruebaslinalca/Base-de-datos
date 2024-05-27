CREATE DATABASE EquiposComputo;
USE EquiposComputo;

CREATE TABLE Dispositivos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50),
    marca VARCHAR(100),
    modelo VARCHAR(100),
    numero_serie VARCHAR(100),
    fecha_adquisicion DATE,
    precio DECIMAL(10, 2)
);

CREATE TABLE Portatiles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dispositivo_id INT,
    ram VARCHAR(50),
    procesador VARCHAR(100),
    disco_duro VARCHAR(100),
    FOREIGN KEY (dispositivo_id) REFERENCES Dispositivos(id)
);

CREATE TABLE EquiposMesa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dispositivo_id INT,
    ram VARCHAR(50),
    procesador VARCHAR(100),
    disco_duro VARCHAR(100),
    monitor VARCHAR(100),
    teclado VARCHAR(100),
    raton VARCHAR(100),
    FOREIGN KEY (dispositivo_id) REFERENCES Dispositivos(id)
);

CREATE TABLE Impresoras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dispositivo_id INT,
    tipo_impresion VARCHAR(50),
    velocidad_impresion VARCHAR(50),
    resolucion_impresion VARCHAR(50),
    capacidad_papel INT,
    FOREIGN KEY (dispositivo_id) REFERENCES Dispositivos(id)
);


