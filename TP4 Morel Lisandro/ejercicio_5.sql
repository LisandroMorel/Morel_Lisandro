CREATE TABLE departamentos (
departamento_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
presupuesto DOUBLE UNSIGNED NOT NULL,
estado boolean NOT NULL
);
CREATE TABLE empleados (
emplaedo_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cuil_cuit VARCHAR(15) NOT NULL UNIQUE,
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) NOT NULL,
departamento INT UNSIGNED,
estado BOOLEAN,
FOREIGN KEY (departamento) REFERENCES departamentos(departamento_id));
INSERT INTO departamentos VALUES(1, 'Desarrollo', 120000, true);
INSERT INTO departamentos VALUES(2, 'Sistemas', 150000, true);
INSERT INTO departamentos VALUES(3, 'Recursos Humanos', 280000, true);
INSERT INTO departamentos VALUES(4, 'Contabilidad', 110000, true);
INSERT INTO departamentos VALUES(5, 'I+D', 375000, true);
INSERT INTO departamentos VALUES(6, 'Proyectos', 0,true );
INSERT INTO departamentos VALUES(7, 'Publicidad', 0, true);
INSERT INTO departamentos VALUES(8, 'Comercial', 0, false);
INSERT INTO empleados VALUES(1, '27-32481596-3', 'Aarón', 'Rivero', 1, true);
INSERT INTO empleados VALUES(2, '27-29557532-1', 'Adela', 'Salas', 2, true);
INSERT INTO empleados VALUES(3, '20-36970642-1', 'Adolfo', 'Rubio', 3, true);
INSERT INTO empleados VALUES(4, '20-41705545-1', 'Adrián', 'Suárez', 4, true);
INSERT INTO empleados VALUES(5, '20-17087203-3', 'Marcos', 'Loyola', 5, true);
INSERT INTO empleados VALUES(6, '27-38382980-3', 'María', 'Santana', 1, true);
INSERT INTO empleados VALUES(7, '23-80576669-1', 'Pilar', 'Ruiz', 2, true);
INSERT INTO empleados VALUES(8, '24-71651431-3', 'Pepe', 'Ruiz', 3, true);
INSERT INTO empleados VALUES(9, '25-36399183-3', 'Juan', 'Gómez', 2, true);
INSERT INTO empleados VALUES(10, '20-34638446-3', 'Diego','Flores', 5, true);
INSERT INTO empleados VALUES(11, '27-36738983-3', 'Marta','Herrera', 1, true);
INSERT INTO empleados VALUES(12, '27-44123836-1', 'Irene','Salas', NULL,
false);
INSERT INTO empleados VALUES(13, '20-38265162-1', 'Juan', 'Antonio', NULL,
true);
-- a) Lista el apellido de todos los empleados.
SELECT apellido FROM empleados;

-- b) Lista el apellido de los empleados eliminando los apellidos que estén repetidos.
SELECT DISTINCT apellido FROM empleados;

-- c) Lista todas las columnas de la tabla empleados.
SELECT * FROM empleados;

-- d) Lista el nombre y apellido de todos los empleados.
SELECT nombre, apellido FROM empleados;

-- e) Lista el cuit/cuil de los departamentos de los empleados que aparecen en la tabla empleados.
SELECT cuit_cuil FROM departamentos WHERE id_departamento IN (SELECT DISTINCT id_departamento FROM empleados);

-- f) Lista el nombre y apellido de los empleados en una única columna.
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM empleados;

-- g) Lista el nombre y apellido de los empleados en una única columna, convirtiendo todos los caracteres en mayúscula.
SELECT UPPER(CONCAT(nombre, ' ', apellido)) AS nombre_completo FROM empleados;

-- h) Lista el nombre y apellido de los empleados en una única columna, convirtiendo todos los caracteres en minúscula.
SELECT LOWER(CONCAT(nombre, ' ', apellido)) AS nombre_completo FROM empleados;

-- i) Lista el nombre de los departamentos y el valor del presupuesto actual ordenado de forma ascendente.
SELECT nombre_departamento, presupuesto_actual FROM departamentos ORDER BY presupuesto_actual ASC;

-- j) Lista el nombre de todos los departamentos ordenados de forma ascendente.
SELECT nombre_departamento FROM departamentos ORDER BY nombre_departamento ASC;

-- k) Lista el nombre de todos los departamentos ordenados de forma descendente.
SELECT nombre_departamento FROM departamentos ORDER BY nombre_departamento DESC;

-- l) Lista el apellido y el nombre de todos los empleados, ordenados de forma alfabética teniendo en cuenta en primer lugar su apellido y luego su nombre.
SELECT apellido, nombre FROM empleados ORDER BY apellido ASC, nombre ASC;

-- m) Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen mayor presupuesto.
SELECT nombre_departamento, presupuesto_actual FROM departamentos ORDER BY presupuesto_actual DESC LIMIT 3;

-- n) Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen menor presupuesto.
SELECT nombre_departamento, presupuesto_actual FROM departamentos ORDER BY presupuesto_actual ASC LIMIT 3;

-- o) Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto mayor o igual a $150000.
SELECT nombre_departamento, presupuesto_actual FROM departamentos WHERE presupuesto_actual >= 150000;

-- p) Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN.
SELECT nombre_departamento, presupuesto_actual FROM departamentos WHERE presupuesto_actual >= 100000 AND presupuesto_actual <= 200000;

-- q) Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN.
SELECT nombre_departamento FROM departamentos WHERE presupuesto_actual < 100000 OR presupuesto_actual > 200000;

-- r) Devuelve una lista con el nombre de los departamentos que tienen un presupuesto entre $100000 y $200000. Utilizando el operador BETWEEN.
SELECT nombre_departamento FROM departamentos WHERE presupuesto_actual BETWEEN 100000 AND 200000;

-- s) Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
SELECT empleados.*, departamentos.nombre_departamento
FROM empleados
INNER JOIN departamentos ON empleados.id_departamento = departamentos.id_departamento;

-- t) Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por apellido y el nombre de los empleados.
SELECT empleados.*, departamentos.nombre_departamento
FROM empleados
INNER JOIN departamentos ON empleados.id_departamento = departamentos.id_departamento
ORDER BY departamentos.nombre_departamento ASC, empleados.apellido ASC, empleados.nombre ASC;

-- u) Devuelve un listado con el código y el nombre del departamento, solamente de aquellos departamentos que tienen empleados.
SELECT departamentos.id_departamento, departamentos.nombre_departamento
FROM departamentos
INNER JOIN empleados ON departamentos.id_departamento = empleados.id_departamento
GROUP BY departamentos.id_departamento, departamentos.nombre_departamento;

-- v) Devuelve el nombre del departamento donde trabaja el empleado que tiene el cuit 27-38382980-3.
SELECT departamentos.nombre_departamento
FROM departamentos
INNER JOIN empleados ON departamentos.id_departamento = empleados.id_departamento
WHERE empleados.cuit_cuil = '27-38382980-3';

-- w) Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz.
SELECT departamentos.nombre_departamento
FROM departamentos
INNER JOIN empleados ON departamentos.id_departamento = empleados.id_departamento
WHERE empleados.nombre = 'Pepe' AND empleados.apellido = 'Ruiz';

-- x) Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente.
SELECT empleados.*emplaedo_idemplaedo_id
FROM empleados
INNER JOIN departamentos ON empleados.id_departamento = departamentos.id_departamento
WHERE departamentos.nombre_departamento = 'I+D'
ORDER BY empleados.apellido ASC, empleados.nombre ASC;

-- y) Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente.
SELECT empleados.*
FROM empleados
INNER JOIN departamentos ON empleados.id_departamento = departamentos.id_departamento
WHERE departamentos.nombre_departamento IN ('Sistemas', 'Contabilidad', 'I+D')
ORDER BY empleados.apellido ASC, empleados.nombre ASC;

-- z) Devuelve una lista con el nombre de los empleados que tienen los departamentos que no tienen un presupuesto entre $100000 y $200000.
SELECT empleados.nombre, empleados.apellido
FROM empleados
INNER JOIN departamentos ON empleados.id_departamento = departamentos.id_departamento
WHERE departamentos.presupuesto_actual < 100000 OR departamentos.presupuesto_actual > 200000;
