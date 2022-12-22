import 'package:intl/intl.dart';

class CalculoPeriodo {
  /* --- Funcion para calcular los dias del periodo --- */
  // static int dias(diasPerido, diasCiclo) {
  //   var numDiasPeriodo = int.parse(diasCiclo) - int.parse(diasPerido);
  //   return numDiasPeriodo;
  // }

  /* --- Funcion para calcular el periodo --- */
  /* 
    -- fecha: Se recibe un dato de tipo DateTime
    -- diasCiclo: Se recibe un dato de tipo int
    -- diasPerido: Se recibe un dato de tipo int
    
    -> Retornamos la fecha del proximo periodo
  */
  static int proxPeriodo(fecha, diasCiclo, diasPerido) {
    var inputFormat = DateFormat('dd-MM-yyyy'); // <- Formato de la fecha
    var numDiasPeriodo = int.parse(diasCiclo) - int.parse(diasPerido);
    var fechaUltimoPeriodo = inputFormat.parse(fecha);
    final proxPeriodo = fechaUltimoPeriodo.add(Duration(days: numDiasPeriodo));
    return proxPeriodo.microsecondsSinceEpoch;
  }
  /* --- Calculo de la fecha de Ovulación --- */
  static int fechaOvulacion(fecha) {
    var meses31dias = [1, 3, 5, 7, 8, 10, 12];
    var meses30dias = [4, 6, 9, 11];
    int diasOvulacion = fecha.day + 10;
    if (fecha.month == 2) {
      if (diasOvulacion >= 28) {
        diasOvulacion = diasOvulacion - 28;
      }
    } else if (meses31dias.contains(fecha.month)) {
      if (diasOvulacion >= 31) {
        diasOvulacion = diasOvulacion - 31;
      }
    } else if (meses30dias.contains(fecha.month)) {
      if (diasOvulacion >= 30) {
        diasOvulacion = diasOvulacion - 30;
      }
    }
    DateTime fechaOvulacion = fecha.add(Duration(days: diasOvulacion));
    return fechaOvulacion.microsecondsSinceEpoch;
  }

  /* --- Calculo de la fecha de fertilidad --- */
  static Map<dynamic, Object> fechasFertilidad(fecha) {
    var meses31dias = [1, 3, 5, 7, 8, 10, 12];
    var meses30dias = [4, 6, 9, 11];
    var diasFertilidadInicio = fecha.day + 6;
    var diasFertilidadFin = diasFertilidadInicio + 6;

    if (fecha.month == 2) {
      if (diasFertilidadInicio >= 28) {
        diasFertilidadInicio = diasFertilidadInicio - 28;
        diasFertilidadFin = diasFertilidadFin - 28;
      }
    } else if (meses31dias.contains(fecha.month)) {
      if (diasFertilidadInicio >= 31) {
        diasFertilidadInicio = diasFertilidadInicio - 31;
        diasFertilidadFin = diasFertilidadFin - 31;
      }
    } else if (meses30dias.contains(fecha.month)) {
      if (diasFertilidadInicio >= 30) {
        diasFertilidadInicio = diasFertilidadInicio - 30;
        diasFertilidadFin = diasFertilidadFin - 30;
      }
    }

    DateTime fechaIncioFertilidad = fecha.add(Duration(days: diasFertilidadInicio));
    DateTime fechaFinFertilidad = fecha.add(Duration(days: diasFertilidadFin));

    return {
      'fechaIncioFertilidad': fechaIncioFertilidad.microsecondsSinceEpoch,
      'fechaFinFertilidad': fechaFinFertilidad.microsecondsSinceEpoch
    };
  }
}