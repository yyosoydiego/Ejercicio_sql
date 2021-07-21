/*WHERE NOS PERMITE SELECCIONAR ELEMENTOS ESPECIFICOS*/

SELECT nombre, email FROM usuarios WHERE id = 4;

SELECT *  FROM usuarios WHERE email = 'dsr2310@hotmail.com';

/*
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/

/* Ejemplos */

/*Si queremos consultar a los usuarios de un año específico, utilizamos YEAR(fecha)*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2021';

/*Si agregamos el operador de compración OR, nos dará el resultado de todos los valores que cumplan con la condición*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2021' OR  YEAR(fecha) = '2020';

/*Con el operador de comparación >=, indicamos que buscamos todos los valores que sean mayor o igual que el valor declarado*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) >= '2019';

/*Si queremos especificar que un valor es nulo, utilizamos IS NULL*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != '2019' OR ISNULL (fecha);

/*EJEMPLO DE LOGIN*/

/*En el caso del login, agregamos los datos como nombre, apellido y contraseña, y utilizamos el operador de comparación =*/
SELECT nombre, apellidos FROM usuarios WHERE email = 'carlos@eduardo.com' AND password = '1234';


/*Usamos LIKE para filtrar los datos que cumplan con una condición*/
SELECT nombre, apellidos FROM usuarios WHERE nombre LIKE '%a%';

/*Ejemplos de consultas con LIKE/*
/*Sintaxis: SELECT * FROM usuarios WHERE nombre LIKE '%a%';*/

/*Utilizamos o% para indicar que el texto debe comenzar con el valor declarado*/
/*Utilizamos %o% para indicar que el elemento debe estar en cualquier lugar del texto*/
/*Utilizamos %o para indicar que el texto debe terminar con el valor declarado*/

SELECT * FROM usuarios WHERE nombre LIKE '%o'