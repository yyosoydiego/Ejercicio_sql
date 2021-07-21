/* Renombrar la tabla */
ALTER TABLE usuarios RENAME TO usuarios_renom;

/* Renombrar una columna */
ALTER TABLE usuarios_renom CHANGE apellidos apellido VARCHAR(50) NULL;

/*Modificar la columna sin cambiar el nombre*/
ALTER TABLE usuarios_renom MODIFY apellido  CHAR(50) NOT NULL;

/*Añadir columna*/
ALTER TABLE usuarios_renom ADD website VARCHAR(50);

/*Añadir una restriccion a una columna*/
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE(email);

/*Borrar una columna*/
ALTER TABLE usuarios_renom DROP website;



/*CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id)
*/