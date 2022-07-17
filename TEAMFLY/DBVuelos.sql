CREATE DATABASE vuelos
    DEFAULT CHARACTER SET utf8
    COLLATE utf8_spanish_ci;

USE vuelos;
CREATE TABLE vuelos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    codVuelo VARCHAR(50),
    origen VARCHAR(50),
    destino VARCHAR(50),
    cantPasajeros INTEGER,
    precio INTEGER
);

INSERT INTO vuelos (codVuelo, origen, destino, cantPasajeros, precio)
    VALUES ('AEPBCR', 'Buenos Aires (Aeroparque)', 'Bariloche', 150, 18000),
        ('AEPIGR', 'Buenos Aires (Aeroparque)', 'Iguazú', 120, 20000),
        ('AEPMDZ', 'Buenos Aires (Aeroparque)', 'Mendoza', 160, 14000),
        ('AEPSLA', 'Buenos Aires (Aeroparque)', 'Salta', 100, 26000),
        ('BCRAEP', 'Bariloche', 'Buenos Aires (Aeroparque)', 150, 18000),
        ('BCRIGR', 'Bariloche', 'Iguazú', 80, 34000),
        ('BCRMDZ', 'Bariloche', 'Mendoza', 110, 16000),
        ('BCRSLA', 'Bariloche', 'Salta', 100, 30000),
        ('IGRAEP', 'Iguazú', 'Buenos Aires (Aeroparque)', 120, 20000),
        ('IGRBRC', 'Iguazú', 'Bariloche', 80, 34000),
        ('IGRMDZ', 'Iguazú', 'Mendoza', 90, 28000),
        ('IGRSLA', 'Iguazú', 'Salta', 150, 16000),
        ('MDZAEP', 'Mendoza', 'Buenos Aires (Aeroparque)', 160, 14000),
        ('MDZBCR', 'Mendoza', 'Bariloche', 110, 16000),
        ('MDZIGR', 'Mendoza', 'Iguazú', 90, 28000),
        ('MDZSLA', 'Mendoza', 'Salta', 140, 22000),
        ('SLAAEP', 'Salta', 'Buenos Aires (Aeroparque)', 100, 26000),
        ('SLABRC', 'Salta', 'Bariloche', 100, 30000),
        ('SLAIGR', 'Salta', 'Iguazú', 150, 16000),
        ('SLAMDZ', 'Salta', 'Mendoza', 140, 22000);

SELECT * FROM vuelos WHERE destino LIKE 'Salta';