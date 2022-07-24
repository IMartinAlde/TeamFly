CREATE DATABASE viajes
    DEFAULT CHARACTER SET utf8
    COLLATE utf8_spanish_ci;

USE viajes;
CREATE TABLE vuelos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    codVuelo VARCHAR(6),
    origen VARCHAR(50),
    destino VARCHAR(50),
    cantPasajeros INTEGER,
    precio FLOAT(8, 2)
);

USE viajes;

CREATE TABLE pasajeros (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    dni VARCHAR(50),
    email VARCHAR(50),
    nroCelular VARCHAR(50)
);

USE viajes;
INSERT INTO vuelos (codVuelo, origen, destino, cantPasajeros, precio)
    VALUES ('AEPBCR', 'Buenos Aires (Aeroparque)', 'Bariloche', 150, 18000),
        ('AEPIGR', 'Buenos Aires (Aeroparque)', 'Iguazú', 120, 20000),
        ('AEPMDZ', 'Buenos Aires (Aeroparque)', 'Mendoza', 160, 14000),
        ('AEPSLA', 'Buenos Aires (Aeroparque)', 'Salta', 100, 26000),
        ('BCRAEP', 'Bariloche', 'Buenos Aires (Aeroparque)', 150, 18000),
        ('BCRMDZ', 'Bariloche', 'Mendoza', 110, 16000),
        ('IGRAEP', 'Iguazú', 'Buenos Aires (Aeroparque)', 120, 20000),
        ('IGRMDZ', 'Iguazú', 'Mendoza', 90, 28000),
        ('IGRSLA', 'Iguazú', 'Salta', 150, 16000),
        ('MDZAEP', 'Mendoza', 'Buenos Aires (Aeroparque)', 160, 14000),
        ('MDZBCR', 'Mendoza', 'Bariloche', 110, 16000),
        ('MDZIGR', 'Mendoza', 'Iguazú', 90, 28000),
        ('MDZSLA', 'Mendoza', 'Salta', 140, 22000),
        ('SLAAEP', 'Salta', 'Buenos Aires (Aeroparque)', 100, 26000),
        ('SLAIGR', 'Salta', 'Iguazú', 150, 16000),
        ('SLAMDZ', 'Salta', 'Mendoza', 140, 22000);


USE viajes;
SELECT * FROM vuelos;

USE viajes;
SELECT * FROM pasajeros;


USE viajes;
INSERT INTO pasajeros (nombre, apellido, dni, email, nroCelular)
    VALUES ('Jorge Gustavo', 'Borgat', '20463139', "gusborgat@hotmail.com", "1112345678");

USE homebanking;
SELECT * FROM users;