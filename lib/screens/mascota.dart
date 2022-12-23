import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:confidentapp/constants/db.dart';
import 'package:confidentapp/data/mascotas.dart';
import 'package:confidentapp/providers/mascota_provider.dart';
import 'package:confidentapp/screens/barra.dart';
import 'package:confidentapp/screens/pantallacirculo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class MascotaPag extends StatefulWidget {
  const MascotaPag({Key? key}) : super(key: key);
  @override
  State<MascotaPag> createState() => _MascotaPagState();
}

class _MascotaPagState extends State<MascotaPag> with TickerProviderStateMixin {
  List mascotas = Mascotas.lista;

  User? user = FirebaseAuth.instance.currentUser;

  Future<void> actulizarEnLaBD(String mascota, urlGif) {
    DocumentReference docUsuario = FirebaseFirestore.instance.collection(Constantes.datosUsuarios).doc(user?.uid);

    return docUsuario.get().then((value) {
      docUsuario.update({
        'preferenciasUI': {
          'mascota': mascota,
          'urlGif': urlGif,
        },
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    MascotaProvider mascota = context.watch<MascotaProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escoja su mascota'),
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
          child: SafeArea(
            child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  const Text('ESCOGE TU MASCOTA'),
                  const Divider(indent: 1),
                  ListView.builder(
                    itemCount: mascotas.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            height: 100.0,
                            width: 100.0,
                            child: Container(
                              child: CircleAvatar(
                                radius: 2.0,
                                backgroundColor: Colors.white,
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(
                                        '¿Quieres elegir esta mascota?',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      actionsAlignment: MainAxisAlignment.center,
                                      actions: <Widget>[
                                        ElevatedButton(
                                          child: const Text('Si'),
                                          onPressed: () async {
                                            await mascota.setMascota(mascotas[index]['urlGif']);
                                            await actulizarEnLaBD(mascotas[index]['mascota'].toString(), mascotas[index]['urlGif']).then((value) {
                                              Navigator.pop(context);
                                            });
                                          },
                                        ),
                                        OutlinedButton(
                                          child: const Text('No'),
                                          onPressed: () => Navigator.of(context).pop(),
                                        )
                                      ],
                                    ));
                                  },
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Lottie.network(
                                      mascotas[index]['urlGif'].toString(),
                                      height: 140
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                
                    }
                  ),
                ])),
          )),
    );
  }
}
