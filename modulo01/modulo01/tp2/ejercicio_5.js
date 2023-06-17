//Crear una función que muestre información sobre una cadena de texto que se le pasa como argumento. 
//A partir de la cadena que se le pasa, la función determina si esa cadena está formada sólo por mayúsculas, 
//sólo por minúsculas o por una mezcla de ambas.
let cadena=prompt("ingresa una cadena de texto")
cadtexto(cadena)
function cadtexto(cadena) {
    if (cadena === cadena.toUpperCase()) {
        console.log("La cadena está formada sólo por mayúsculas");
    } else if (cadena === cadena.toLowerCase()) {
        console.log("La cadena está formada sólo por minúsculas");
    } else {
        console.log("La cadena está formada por una mezcla de mayúsculas y minúsculas")}
    }








