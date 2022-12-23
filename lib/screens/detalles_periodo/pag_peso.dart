import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:confidentapp/constants/db.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PesoPag extends StatefulWidget {
  const PesoPag({Key? key}) : super(key: key);

  @override
  State<PesoPag> createState() => _PesoPagState();
}

class _PesoPagState extends State<PesoPag> {
  TextEditingController controllerpeso = TextEditingController();
  int resultpeso = 0;

  User? user = FirebaseAuth.instance.currentUser;
  
  Future<void> registrarPesoBD(int peso) {
    DocumentReference docUsuario = FirebaseFirestore.instance.collection(Constantes.datosUsuarios).doc(user?.uid);

    return docUsuario.get().then((value) {
      docUsuario.update({
        'detallesPeriodo': {
          'temperatura': value['detallesPeriodo']['temperatura'],
          'horasSuenio': value['detallesPeriodo']['horasSuenio'],
          'pesoCorporal': peso,
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
        title: const Text("Peso"),
        backgroundColor: Color.fromARGB(255, 123, 71, 213),
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
            Divider(indent: 30),
            Text(
              'Ingrese peso corporal',
              // ignore: prefer_const_constructors
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controllerpeso,
              onChanged: (valor) {
                if (valor.isEmpty == true) {
                  setState(() {
                    resultpeso = 0;
                  });
                } else {
                  setState(() {
                      resultpeso = int.parse(valor);
                  });
                }
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Horas al dìa',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
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
                    await registrarPesoBD(resultpeso);
                  },
                  style: ElevatedButton.styleFrom(
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
              "$resultpeso Kilos",
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
