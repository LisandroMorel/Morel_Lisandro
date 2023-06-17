//Crea una función que genere 100 números aleatorios entre 1 y 100 que no se repitan y luego imprima por
// pantalla usando document.write().
function generarNumerosAleatorios() {
  var numeros = [];
   while (numeros.length < 100) {
    var numeroAleatorio = Math.floor(Math.random() * 100) + 1;
    if (numeros.indexOf(numeroAleatorio) === -1) {
      numeros.push(numeroAleatorio);
    }
  }
  for (var i = 0; i < numeros.length; i++) {
    document.write(numeros[i] + "<br>");
  }
}
generarNumerosAleatorios();





