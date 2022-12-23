import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:confidentapp/constants/db.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:confidentapp/screens/mascota.dart';
import 'package:lottie/lottie.dart';
import '../utils/authentication.dart';
import 'calendarioregistro.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class Circulo extends StatelessWidget {
  const Circulo({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser; // <- Datos del usuario logeado
    DateTime fechaActual = DateTime.now();

    // MascotaProvider mascota = context.watch<MascotaProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confident'),
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
                tileMode: TileMode.repeated)),
        child: ListView(children: [
          //---contenedor fecha actual
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StreamBuilder<DocumentSnapshot>(
                stream: FirebaseFirestore.instance.collection(Constantes.datosUsuarios).doc(user?.uid).snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var datosUsuario = snapshot.data!;
                    var mascotaUI = datosUsuario['preferenciasUI']['urlGif'];
                    return Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Lottie.network(
                        mascotaUI,
                        height: 100),
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    bottomLeft: Radius.circular(2),
                  )
                ),
                // margin: const EdgeInsets.fromLTRB(250, 20, 0, 0),
                child: Text(
                  'Hoy, ${DateFormat.yMMMMd().format(DateTime.now())}',
                  style: const TextStyle(
                    color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),
            ],
          ),
          // Container(
          //   margin: const EdgeInsets.fromLTRB(0, 0, 250, 20),
          //   child: Lottie.network(
          //     mascota.mascota,
          //     height: 100),
          // ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topCenter, //aligns CircleAvatar to Top Center.
            child: CircleAvatar(
              radius: 140, //radius is 50,
              backgroundColor: Color.fromARGB(95, 238, 169, 238),
              child: StreamBuilder<DocumentSnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection(Constantes.datosUsuarios)
                      .doc(user!.uid)
                      .snapshots(),
                  builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasData) {
                      var data = snapshot.data!;
                      DateTime proxPeriodo = DateTime.fromMillisecondsSinceEpoch(data['fechasPeriodo']['fechaProxPeriodo'].seconds * 1000);
                      var direnciaDiasProximoPeriodo = proxPeriodo.difference(DateTime(fechaActual.year, fechaActual.month, fechaActual.day));
                      return Text(
                        'FALTAN ${direnciaDiasProximoPeriodo.inDays} \n Días para tu próximo periodo',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topCenter, //aligns CircleAvatar to Top Center.
            child: CircleAvatar(
              radius: 140, //radius is 50,
              backgroundColor: const Color.fromARGB(95, 238, 169, 238),
              child: StreamBuilder<DocumentSnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection(Constantes.datosUsuarios)
                      .doc(user.uid)
                      .snapshots(),
                  builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasData) {
                      var data = snapshot.data!;
                      DateTime incioFertilidad = DateTime.fromMillisecondsSinceEpoch(data['fechasPeriodo']['fechaIncioFertilidad'].seconds * 1000);
                      var direnciaDias = incioFertilidad.difference(DateTime(fechaActual.year, fechaActual.month, fechaActual.day));
                      
                      return Text(
                        'FALTAN ${direnciaDias.inDays} \n Días para tu inicio del periodo de fertilidad',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topCenter, //aligns CircleAvatar to Top Center.
            child: CircleAvatar(
              radius: 140, //radius is 50,
              backgroundColor: const Color.fromARGB(95, 238, 169, 238),
              child: StreamBuilder<DocumentSnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection(Constantes.datosUsuarios)
                      .doc(user.uid)
                      .snapshots(),
                  builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasData) {
                      var data = snapshot.data!;
                      DateTime finFertilidad = DateTime.fromMillisecondsSinceEpoch(data['fechasPeriodo']['fechaFinFertilidad'].seconds * 1000);
                      var direnciaDias = finFertilidad.difference(DateTime(fechaActual.year, fechaActual.month, fechaActual.day));
                      return Text(
                        'FALTAN ${direnciaDias.inDays} \n Días para tu fin del periodo de fertilidad',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topCenter, //aligns CircleAvatar to Top Center.
            child: CircleAvatar(
              radius: 140, //radius is 50,
              backgroundColor: const Color.fromARGB(95, 238, 169, 238),
              child: StreamBuilder<DocumentSnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection(Constantes.datosUsuarios)
                      .doc(user.uid)
                      .snapshots(),
                  builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasData) {
                      var data = snapshot.data!;
                      DateTime fechaOvulacion= DateTime.fromMillisecondsSinceEpoch(data['fechasPeriodo']['fechaOvulacion'].seconds * 1000);
                      var direnciaDias = fechaOvulacion.difference(DateTime(fechaActual.year, fechaActual.month, fechaActual.day));

                      return Text(
                        'FALTAN ${direnciaDias.inDays} \n Días para la ovulaciòn',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),

      //------------------------------BARRA CERRAR SESION----------------------
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment(0.0, 3.0),
                      colors: [
                        Color.fromARGB(255, 123, 71, 213),
                        Color.fromARGB(255, 159, 238, 249),
                        Color.fromARGB(255, 1, 203, 230)
                      ],
                      tileMode: TileMode.repeated)),
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      showAlertDialog(
                          context, 'Bienvenida ' + nombre(), 'Hola');
                    },
                    icon: imagenUser(),
                    iconSize: 100.0,
                  ),
                  Container(alignment: Alignment.center, child: Text(nombre())),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ListTile(
              leading: Icon(
                Icons.password,
              ),
              title: const Text('Cambiar mascota'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MascotaPag(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.close,
              ),
              title: const Text('Cerrar sesión'),
              onTap: () async {
                await Authentication.cerrarSesion(context: context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
