CREATE TABLE usuarios(
id              INT AUTO_INCREMENT NOT NULL,
nombre          VARCHAR(50) NOT NULL,
apellidos       VARCHAR(50) NOT NULL,
email           VARCHAR(50) NOT NULL,
password        VARCHAR(50) NOT NULL,
apodo           VARCHAR(50),
idiomas         VARCHAR(200),
fecha           DATE NOT NULL,
CONSTRAINT      pk_usuarios PRIMARY KEY(id),
CONSTRAINT      uq_email UNIQUE(email)
);

CREATE TABLE desarrollador(
id              INT AUTO_INCREMENT NOT NULL,
portafolio      VARCHAR(500) /* Preguntar que datatype seria una caarpeta donde se suben diferentes archivos */

);
