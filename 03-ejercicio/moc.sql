CREATE TABLE usuarios(
id              INT AUTO_INCREMENT NOT NULL,
nombre          VARCHAR(50) NOT NULL,
apellidos       VARCHAR(50) NOT NULL,
email           VARCHAR(50) NOT NULL,
password        VARCHAR(50) NOT NULL,
desarrollador_id INT NOT NULL,
empleador_id    INT NOT NULL,
idiomas         VARCHAR(200),
fecha           DATE NOT NULL,
CONSTRAINT      uq_email UNIQUE(email),
CONSTRAINT      pk_usuarios PRIMARY KEY(id)
);
CREATE TABLE desarrolladores(
id              INT AUTO_INCREMENT NOT NULL,
portafolio      VARCHAR(500), /* Preguntar que datatype seria una caarpeta donde se suben diferentes archivos */
datos_bancarios VARCHAR(12),
CONSTRAINT      uq_datos_bancarios UNIQUE(datos_bancarios),
CONSTRAINT      pk_desarrollador PRIMARY KEY(id)
);
CREATE TABLE empleadores(
id              INT AUTO_INCREMENT NOT NULL,
datos_bancarios VARCHAR(12),
CONSTRAINT      pk_empleadores PRIMARY KEY(id)
);
ALTER TABLE usuarios ADD CONSTRAINT fk_usuario_desarrollador FOREIGN KEY(desarrollador_id) REFERENCES desarrolladores(id);
ALTER TABLE usuarios ADD CONSTRAINT fk_usuario_empleador FOREIGN KEY(empleador_id) REFERENCES empleadores(id);
