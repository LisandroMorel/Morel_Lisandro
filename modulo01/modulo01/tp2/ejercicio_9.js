//Crear un programa que recibe las notas de un alumno, todos los números deben ser naturales
//< 11. Debe calcular el promedio. Por último imprimir en pantalla si el valor de media es < 5
//“Reprobado”, entre 6 y 8 “Aprobado” y si es mayor a 8 “Sobresaliente”
function calcularPromedio(notas) {
  var suma = 0;
  for (var i = 0; i < notas.length; i++) {
    suma += notas[i];
  }
  var promedio = suma / notas.length;
  return promedio;
}

function imprimirResultado(promedio) {
  if (promedio < 6) {
    document.write("Reprobado");
  } else if (promedio >= 6 && promedio <= 8) {
    document.write("Aprobado");
  } else if (promedio > 8) {
    document.write("Sobresaliente");
  }
}

var notas = [];
for (var i = 0; i < 4; i++) {
  var nota = parseInt(prompt("Ingresa la nota " + (i + 1)));
  if (nota >= 1 && nota <= 10) {
    notas.push(nota);
  } else {
    document.write("Nota inválida. Inténtalo nuevamente.");
    break;
  }
}

if (notas.length === 4) {
  var promedio = calcularPromedio(notas);
  imprimirResultado(promedio);
}
