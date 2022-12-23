import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:confidentapp/constants/db.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SuenioPag extends StatefulWidget {
  const SuenioPag({Key? key}) : super(key: key);

  @override
  State<SuenioPag> createState() => _SuenioPagState();
}

class _SuenioPagState extends State<SuenioPag> {
  TextEditingController controllersueno = TextEditingController();
  String resultsueno = '0';

  User? user = FirebaseAuth.instance.currentUser;

  Future<void> registrarSuenioBD(int horas) {
    DocumentReference docUsuario = FirebaseFirestore.instance.collection(Constantes.datosUsuarios).doc(user?.uid);

    return docUsuario.get().then((value) {
      docUsuario.update({
        'detallesPeriodo': {
          'temperatura': value['detallesPeriodo']['temperatura'],
          'horasSuenio': horas,
          'pesoCorporal': value['detallesPeriodo']['pesoCorporal'],
          'animo': value['detallesPeriodo']['animo'],
          'sintoma': value['detallesPeriodo']['sintoma'],
        },
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sueño"),
        backgroundColor: const Color.fromARGB(255, 123, 71, 213),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
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
        child: Column(
          children: [
            const Divider(indent: 30),
            const Text(
              'Ingrese duraciòn del sueño',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: controllersueno,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Horas al dìa',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 248, 247, 249),
                        width: 5.0,
                      ))),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    int horasSuenio = int.parse(controllersueno.text);
                    await registrarSuenioBD(horasSuenio);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 123, 71, 213),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                      textStyle: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  child: Text("GUARDAR"),
                ),
                Divider(indent: 5),
              ],
            ),
            Text(
              " $resultsueno horas",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
