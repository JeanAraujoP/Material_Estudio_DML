CREATE DATABASE Trazabilidad_SGVA;
USE Trazabilidad_SGVA;

CREATE TABLE Trazabilidad (
	id_Trazabilidad INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre_Empresa VARCHAR(50) NULL,
    encargado VARCHAR(20) NOT NULL,
    fecha_Inicio DATE NOT NULL,
    fecha_Fin DATE NOT NULL,
    telefono VARCHAR(15) NOT NULL,
	correo VARCHAR(50) NOT NULL,
	estado VARCHAR(45) NOT NULL,
    fecha_Cierre DATE NOT NULL
);

CREATE TABLE Empresa (
	id_Empresa INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    codigo_Empresa VARCHAR(10) NOT NULL,
    nombre_Empresa VARCHAR(50) NOT NULL
);

-- Eliminamos la PK anterior y dejamos codigo_Empresa como principal
ALTER TABLE Empresa
DROP PRIMARY KEY;

ALTER TABLE Empresa
DROP COLUMN id_Empresa;

ALTER TABLE Empresa
ADD PRIMARY KEY (codigo_Empresa);

-- Ajuste de tipo de dato en Trazabilidad
ALTER TABLE Trazabilidad
CHANGE nombre_Empresa codigo_Empresa VARCHAR(10);

-- Relación entre tablas
ALTER TABLE Trazabilidad
ADD CONSTRAINT fk_empresa
FOREIGN KEY (codigo_Empresa) REFERENCES Empresa(codigo_Empresa);

DESCRIBE Empresa;

-- INSERTS CORREGIDOS
INSERT INTO Empresa (codigo_Empresa, nombre_Empresa)
VALUES ('COD1','SENA');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('INDIGO PARK COLOMBIA S.A.S','COD2');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('PROTELA S.A.','COD3');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('KIBERNUM S.A.S','COD4');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('YES CONTACT & BPO S.A.S - YES BPO S.A.S','COD5');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('ENERGITEL','COD6');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('INDIGO PARK COLOMBIA S.A.S','COD7');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('EKOOMEDIA','COD8');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('SATELCO INTERACTIVO S.A.S','COD9');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('SIMIL TECH S.A.S','COD10');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('AMWELL COLOMBIA S.A.S','COD11');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('TIC SOCIAL S.A.S','COD12'), 
       ('NTT DATA COLOMBIA S.A.S','COD13');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('JAZZZPLAT COLOMBIA S.A.S','COD14'), 
       ('INDUSTRIA MILITAR','COD15');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('IDENTIDAD TELECOM S.A.S','COD16'), 
       ('SOPORTE Y LOGISTICA S.A.S','COD17');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('SQDM S.A.S','COD18'), 
       ('INSTALEAP S.A.S','COD19');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa)
VALUES ('MULLEN LOWE SSP3 S.A.S','COD20'), 
       ('KIBERUM S.A.S','COD21');