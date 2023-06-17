//Escribir un script que muestre la posición de la primera vocal de un texto introducido por teclado. 
//Por ejemplo: perro = “e” es la letra Nº2 ; árbol = “a” es la letra Nº1. 
const texto = prompt("Introduce un texto: ");
const vocales = "aeiouAEIOUáéíóúÁÉÍÓÚ";
let posicion = -1;

for (let i = 0; i < texto.length; i++) {
    if (vocales.includes(texto[i])) {
        posicion = i + 1;
        break;
    }
}

if (posicion === -1) {
    console.log("No se encontraron vocales en el texto");
} else {
    console.log(`La primera vocal es "${texto[posicion - 1]}" y es la letra Nº${posicion}`);
}



















