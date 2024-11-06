CREATE DATABASE proyecto_web;
use proyecto_web;
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    primer_nombre VARCHAR(50) NOT NULL,
    segundo_nombre VARCHAR(50),
    primer_apellido VARCHAR(50) NOT NULL,
    segundo_apellido VARCHAR(50),
    telefono VARCHAR(15),
    fecha_nacimiento DATE,
    rh VARCHAR(3),
    direccion VARCHAR(100),
    correo VARCHAR(100) UNIQUE NOT NULL,
    ciudad VARCHAR(50),
    identificacion VARCHAR(20) UNIQUE NOT NULL,
    ocupacion VARCHAR(50),
    contraseña VARCHAR(255) NOT NULL
);

SELECT * FROM usuarios;
INSERT INTO usuarios (primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, telefono, fecha_nacimiento, rh, direccion, correo, ciudad, identificacion, ocupacion, contraseña) 
VALUES ('monica', 'yaridt', 'Riaño', 'Masmela', '3135046963', STR_TO_DATE('04-03-2000', '%d-%m-%Y'), 'A+', 'Calle 16 # 31-36', 'moni.rai@gmail.com', 'tame', '1002557005', 'Estudiante', '1002557005');
DELETE FROM usuarios WHERE id = 8;
