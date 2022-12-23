import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:confidentapp/constants/db.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TemperaturaPag extends StatefulWidget {
  const TemperaturaPag({Key? key}) : super(key: key);

  @override
  State<TemperaturaPag> createState() => _TemperaturaPagState();
}

class _TemperaturaPagState extends State<TemperaturaPag> {
  TextEditingController controller1 = TextEditingController();
  String resultTemperatura = '0';

  User? user = FirebaseAuth.instance.currentUser;

  Future<void> registrarTempBD(String valorTemperatura) {
    DocumentReference docUsuario = FirebaseFirestore.instance.collection(Constantes.datosUsuarios).doc(user?.uid);

    return docUsuario.get().then((value) {
      docUsuario.update({
        'detallesPeriodo': {
          'temperatura': int.parse(valorTemperatura),
          'horasSuenio': value['detallesPeriodo']['horasSuenio'],
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
        title: const Text("Temperatura"),
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
        child: Container(
          child: Column(
            children: [
              const Divider(indent: 30),
              const Text(
                'Ingrese su temperatura',
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: controller1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Temperatura °C",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 248, 247, 249),
                          width: 5.0,
                        ))),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        resultTemperatura = controller1.text;
                      });
                      await registrarTempBD(resultTemperatura);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 123, 71, 213),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    child: const Text("GUARDAR"),
                  ),
                  const Divider(indent: 5),
                  ElevatedButton(
                    onPressed: () {
                      controller1.clear();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 123, 71, 213),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    child: Text("BORRAR"),
                  ),
                ],
              ),
              Text(
                " $resultTemperatura °C",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}