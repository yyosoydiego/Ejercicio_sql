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

SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2020' OR  YEAR(fecha) = '2021';