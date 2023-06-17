//Escribir el código de una función a la que se pasa como parámetro un número entero y devuelve como resultado 
//una cadena de texto que indica si el número es par o impar. Mostrar por pantalla el resultado devuelto por la función.  
//Por ejemplo si ingresara un dos el resultado debe ser par y si ingresara un 5 el resultado debe ser impar 
n = prompt()
function esParOImpar(n) {
    if (n % 2 === 0) {
        return "par";
    } else {
        return "impar";
    }
}

console.log(esParOImpar(n));





















