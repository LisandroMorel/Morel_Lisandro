//Escribir una función que reciba un texto y lo devuelva al revés.
function invertircadena(cadena){
    let cadenainvertida = "";
    for (let i = cadena.length-1; i>=0; i--){
        cadenainvertida+=cadena[i];
    }
return cadenainvertida
}
let cadena =prompt("ingresa una cadena de texto")
let cadenainvertida= invertircadena(cadena);
console.log(cadenainvertida);




