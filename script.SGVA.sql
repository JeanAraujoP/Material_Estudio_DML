-- este creara el la base de datos donde se guardara toda la informacion 
CREATE DATABASE trazabilidad_sgva1;

-- la base de datos donde se guardaran los cambios
USE Trazabilidad_sgva1;

-- =========================================
-- LAS TABLAS QUE SE UTILIZARAN 
-- =========================================

-- =========================================
-- LA TABLA DE TRAZABILIDAD
-- =========================================

CREATE TABLE Trazabilidad (
    id_Trazabilidad INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    codigo_Empresa VARCHAR(45) DEFAULT 'PENDIENTE',
    encargado VARCHAR(20) NOT NULL,
    fecha_Inicio DATE NOT NULL,
    fecha_Fin DATE NOT NULL,
    telefono INT DEFAULT 0,
    correo VARCHAR(50) NOT NULL,
    estado VARCHAR(45) NOT NULL DEFAULT 'PENDIENTE',
    fecha_Cierre DATE
);

-- =========================================
-- LA TABLA DE EMPRESA
-- =========================================
CREATE TABLE Empresa (
    -- Se elimina id_Empresa desde el inicio para evitar errores
    codigo_Empresa VARCHAR(45) PRIMARY KEY,
    nombre_Empresa VARCHAR(50) NOT NULL
);

-- =========================================
-- CONSULTA DE VERIFICACIÓN
-- =========================================
SELECT * FROM Empresa;

-- =========================================
-- INSERCIONES
-- =========================================

INSERT INTO Empresa 
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

INSERT INTO Empresa VALUES ('COD7','INDIGO PARK COLOMBIA S.A.S');

INSERT INTO Empresa VALUES ('COD8','EKOOMEDIA');

INSERT INTO Empresa VALUES ('COD9','SATELCO INTERACTIVO S.A.S');

INSERT INTO Empresa VALUES ('COD10','SIMIL TECH S.A.S');

INSERT INTO Empresa VALUES ('COD11','AMWELL COLOMBIA S.A.S');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa) 
VALUES 
('TIC SOCIAL S.A.S','COD12'),
('NTT DATA COLOMBIA S.A.S','COD13');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa) 
VALUES 
('JAZZZPLAT COLOMBIA S.A.S','COD14'),
('INDUSTRIA MILITAR','COD15');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa) 
VALUES 
('IDENTIDAD TELECOM S.A.S','COD16'),
('SOPORTE Y LOGISTICA S.A.S','COD17');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa) 
VALUES 
('SQDM S.A.S','COD18'),
('INSTALEAP S.A.S','COD19');

INSERT INTO Empresa (nombre_Empresa, codigo_Empresa) 
VALUES 
('MULLEN LOWE SSP3 S.A.S','COD20'),
('KIBERUM S.A.S','COD21');

-- =========================================
-- RELACIÓN ENTRE LAS TABLAS
-- =========================================

-- Las llave foránea 
ALTER TABLE Trazabilidad
ADD CONSTRAINT fk_empresa
FOREIGN KEY (codigo_Empresa)
REFERENCES Empresa(codigo_Empresa);