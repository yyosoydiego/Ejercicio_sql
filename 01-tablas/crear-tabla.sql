
/* Crear una tabla: se utiliza la sentencia CREATE TABLE nombretabla */

CREATE TABLE usuarios(
id              INT AUTO_INCREMENT NOT NULL,
nombre          VARCHAR(50) NOT NULL,
apellidos       VARCHAR(50) NOT NULL,
email           VARCHAR(50) NOT NULL,
password        VARCHAR(50) NOT NULL,
CONSTRAINT      pk_usuarios PRIMARY KEY(id)
);