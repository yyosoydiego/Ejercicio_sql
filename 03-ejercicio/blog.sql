CREATE TABLE usuarios(
id             INT AUTO_INCREMENT NOT NULL
nombre         VARCHAR(100) NOT NULL UNIQUE
apellidos      VARCHAR(100) NOT NULL UNIQUE
email          VARCHAR(100) NOT NULL UNIQUE
password       VARCHAR(100) NOT NULL UNIQUE
fecha          DATE NOT NULL UNIQUE
CONSTRAINT      pk_usuarios PRIMARY KEY(id)
CONSTRAINT     fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE entradas(
id              INT AUTO_INCREMENT NOT NULL
usuario_id      INT NOT NULL
categoria_id    INT NOT NULL
titulo          VARCHAR(200) NOT NULL
descripcion     TEXT
fecha           DATE NOT NULL
CONSTRAINT      pk_entradas PRIMARY KEY(id)
CONSTRAINT      fk_entrada_entradas FOREIGN KEY(categorias_id) REFERENCES entradas(categoria_id)
);

CREATE TABLE categorias(
id              INT AUTO_INCREMENT NOT NULL
nombre          VARCHAR(100) NOT NULL
CONSTRAINT      pk_categorias PRIMARY KEY(id)
);
