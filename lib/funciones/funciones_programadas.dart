import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FuncionesPlanificador {
  User? user = FirebaseAuth.instance.currentUser; // <- Datos del usuario actual
  
  static Future<void> actualizarDatosPeriodo() async {
    // Obtenemos la referencia del usuario actual de la base de datos
    var instanciaUsuario = FirebaseFirestore.instance
    .collection('data_usuarios')
    .doc(FuncionesPlanificador().user!.uid);
    
    var datosUsuario = instanciaUsuario.get();

    await datosUsuario.then((datos) {
      // Funcion para transformar los datos en un "Mapa clave valor"
      Map<String, dynamic> toJson() => {
        'numero_ciclo': datos['numero_ciclo'],
        'faltan_dias_fertilidad_inicio': datos['faltan_dias_fertilidad_inicio'],
        'faltan_dias_fertilidad_fin': datos['faltan_dias_fertilidad_fin'],
        'faltan_dias_ovulacion': datos['faltan_dias_ovulacion'],
      };

      var datosUsuario = toJson();

      // Recorremos el mapa
      datosUsuario.forEach((clave, valor) {
        if (valor != 0) {
          valor--; // <- Restamos uno el valor
          // Actualzamos el dato <valor> del usuario en la base de datos
          instanciaUsuario.update({clave: valor,});
        }
      });     
      // var numeroCiclo = datos['numero_ciclo'];
      // var finDiasFertilidad = datos['faltan_dias_fertilidad_fin'];
      // var inicioDiasFertilidad = datos['faltan_dias_fertilidad_inicio'];
      // var diasOvulacion = datos['faltan_dias_ovulacion'];
    });
  }
}