//Ejercicio 1:
//A partir del siguiente array que se proporciona:
var valores = [true, false, 9, "holaaa", "mundo", 3, "char"];
//1. Determinar cuál de los “elementos de texto” es mayor, es decir el que contenga más letras.
//2. Imprimir estos elementos de menor a mayor cantidad de letras.
//3. Determinar el resultado de las cuatro operaciones matemáticas básicas (suma, resta,
//multiplicación y división) realizadas con los dos elementos numéricos

let soloTexto = valores.filter(item => typeof item === 'string');

let masLetras = soloTexto.reduce((a, b) => a.length > b.length ? a : b);
console.log(`El elemento de texto con más letras es: ${masLetras}`);

let ordenado = soloTexto.sort((a, b) => a.length - b.length);
console.log(`Los elementos de texto ordenados de menor a mayor cantidad de letras son: ${ordenado}`);

let soloNumeros = valores.filter(item => typeof item === 'number');

let suma = soloNumeros.reduce((a, b) => a + b);
console.log(`La suma de los números dentro del array es: ${suma}`);

let resta = soloNumeros.reduce((a, b) => a - b);
console.log(`La resta de los números dentro del array es: ${resta}`);

let multiplicacion = soloNumeros.reduce((a, b) => a * b);
console.log(`La multiplicación de los números dentro del array es: ${multiplicacion}`);

let division = soloNumeros.reduce((a, b) => a / b);
console.log(`La división de los números dentro del array es: ${division}`);

















