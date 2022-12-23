import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:confidentapp/constants/db.dart';
import 'package:confidentapp/widgets/frostedglass.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class InformePag extends StatelessWidget {
  const InformePag({super.key});
  

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    String obtenerFecha(intFecha) {
      return DateFormat.yMMMMd().format(DateTime.fromMillisecondsSinceEpoch(intFecha * 1000));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Informe'),
        backgroundColor: const Color.fromARGB(255, 123, 71, 213),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.0, 1.0),
            colors: [
              Color.fromARGB(255, 123, 71, 213),
              Color.fromARGB(255, 159, 238, 249),
              Color.fromARGB(255, 1, 203, 230)
            ],
            tileMode: TileMode.repeated
          ),
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
              child: StreamBuilder<DocumentSnapshot>(
                stream: FirebaseFirestore.instance.collection(Constantes.datosUsuarios).doc(user?.uid).snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var datosUsuario = snapshot.data!;
                    var detallesPeriodo = datosUsuario['detallesPeriodo'];
                    var fechasPeriodo = datosUsuario['fechasPeriodo'];
                    return FrostedGlassBox(
                      valuePadding: 25,
                      valueRadius: 10,
                      theChild: Column(
                        children: [
                          dato('Nombre', user!.displayName.toString(), false),
                          tituloSeccion('Detalles Periodo'),
                          dato('Animo', '${detallesPeriodo['animo']}', true),
                          dato('Horas de sueño', '${detallesPeriodo['horasSuenio']}', true),
                          dato('Peso Corporal', '${detallesPeriodo['pesoCorporal']} Kg', true),
                          dato('Temperatura', '${detallesPeriodo['temperatura']} °C', true),
                          dato('Sintoma', '${detallesPeriodo['sintoma']}', true),
                          dato('Duración del periodo', '${fechasPeriodo['duracionPeriodo']}', true),
                          dato('Duración ciclo menstrual', '${fechasPeriodo['duracionCiclo']}', false),
                          tituloSeccion('Fechas del periodo'),
                          dato('Último periodo', obtenerFecha(fechasPeriodo['fechaUltimoPeriodo'].seconds), true),
                          dato('Proximo periodo', obtenerFecha(fechasPeriodo['fechaProxPeriodo'].seconds), true),
                          dato('Fecha ovulación', obtenerFecha(fechasPeriodo['fechaOvulacion'].seconds), true),
                          dato('Inicio fertilidad', obtenerFecha(fechasPeriodo['fechaIncioFertilidad'].seconds), true),
                          dato('Fin fertilidad', obtenerFecha(fechasPeriodo['fechaFinFertilidad'].seconds), false),
                        ],
                      ),
                    );
                  }
                  return SizedBox(
                    width: MediaQuery.of(context).size.width - 30,
                    height: MediaQuery.of(context).size.height - 30,
                    child: const Center(
                      child: CircularProgressIndicator()
                    ),
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget tituloSeccion(titulo) => Container(
    margin: const EdgeInsets.only(top: 20, bottom: 20),
    alignment: Alignment.centerLeft,
    child: Text(
      titulo,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        // fontStyle: FontStyle.italic
      ),
    ),
  );

  Widget dato(titulo, dato, conEspacio) => Column(
    children: [
      Container(
      margin: const EdgeInsets.only(bottom: 5),
        alignment: Alignment.centerLeft,
        child: Text(
          titulo,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white70,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          dato,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w400
          ),
        ),
      ),
      conEspacio == true ? Container(
        margin: const EdgeInsets.only(top: 12, bottom: 12),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.white38,
              width: .5,
            )
          )
        ),
      ) : Container(),
    ],
  );
}