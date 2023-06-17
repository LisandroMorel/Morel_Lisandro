//Escribir un programa que reciba el número del mes y devuelva si tiene 31, 30 o menos días.
// Por ejemplo: si ingreso el mes 12  el resultado debe decir tiene 31 días.
function obtenerDiasDelMes(mes) {
  switch (mes) {
    case 1: // Enero
    case 3: // Marzo
    case 5: // Mayo
    case 7: // Julio
    case 8: // Agosto
    case 10: // Octubre
    case 12: // Diciembre
      return 31;
    case 4: // Abril
    case 6: // Junio
    case 9: // Septiembre
    case 11: // Noviembre
      return 30;
    case 2: // Febrero
      return "28 o 29"; // Depende si es año bisiesto o no
    default:
      return "Mes inválido";
      
  }
}

var mes = parseInt(prompt("Ingresa el número del mes"));

var cantidadDias = obtenerDiasDelMes(mes);
document.write("El mes " + mes + " tiene " + cantidadDias + " días.");
  

























