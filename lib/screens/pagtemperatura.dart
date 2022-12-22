import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class TemperaturaPag extends StatefulWidget {
  const TemperaturaPag({Key? key}) : super(key: key);

  @override
  _TemperaturaPagState createState() => _TemperaturaPagState();
}

class _TemperaturaPagState extends State<TemperaturaPag> {
  TextEditingController controller1 = TextEditingController();
  String resultTemperatura = '0';

  User? user = FirebaseAuth.instance.currentUser;
  CollectionReference temperaturaUsuarios =
      FirebaseFirestore.instance.collection('data_usuarios');

  Future<void> registrarPeriodoBD(
    String valorTemperatura,
  ) {
    return temperaturaUsuarios.add({
      'idUsuario': user?.uid,
      'valorTemperatura': valorTemperatura,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hoy"),
        backgroundColor: Color.fromARGB(255, 123, 71, 213),
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
        child: Container(
          child: Column(
            children: [
              Divider(indent: 30),
              Text(
                'Ingrese su temperatura',
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
                controller: controller1,
                decoration: InputDecoration(
                    labelText: "Temperatura °C",
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
                      setState(() {
                        resultTemperatura = controller1.text;
                      });
                      await registrarPeriodoBD(resultTemperatura);
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
                style: TextStyle(
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

class AguaPag extends StatefulWidget {
  AguaPag({Key? key}) : super(key: key);

  @override
  State<AguaPag> createState() => _AguaPagState();
}

class _AguaPagState extends State<AguaPag> {
  TextEditingController controlleragua = TextEditingController();
  String resultagua = '0';

  User? user = FirebaseAuth.instance.currentUser;
  CollectionReference AguaUsuarios =
      FirebaseFirestore.instance.collection('AguaUsuarios');

  Future<void> aniadiragua(
    String valorAgua,
  ) {
    return AguaUsuarios.add({
      'idUsuario': user?.uid,
      'valorAgua': valorAgua,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hoy"),
        backgroundColor: Color.fromARGB(255, 123, 71, 213),
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
        child: Container(
          child: Column(
            children: [
              Divider(indent: 30),
              Text(
                'Ingrese vasos de agua',
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
                controller: controlleragua,
                decoration: InputDecoration(
                    labelText: 'Vasos por dia',
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
                      setState(() {
                        resultagua = controlleragua.text;
                      });
                      await aniadiragua(resultagua);
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
                " $resultagua ",
                style: TextStyle(
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

class SuenoPag extends StatefulWidget {
  SuenoPag({Key? key}) : super(key: key);

  @override
  State<SuenoPag> createState() => _SuenoPagState();
}

class _SuenoPagState extends State<SuenoPag> {
  TextEditingController controllersueno = TextEditingController();
  String resultsueno = '0';

  User? user = FirebaseAuth.instance.currentUser;
  CollectionReference SuenoUsuarios =
      FirebaseFirestore.instance.collection('SuenoUsuarios');

  Future<void> aniadirsueno(
    String valorSueno,
  ) {
    return SuenoUsuarios.add({
      'idUsuario': user?.uid,
      'valorSueño': valorSueno,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hoy"),
        backgroundColor: Color.fromARGB(255, 123, 71, 213),
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
        child: Container(
          child: Column(
            children: [
              Divider(indent: 30),
              Text(
                'Ingrese duraciòn del sueño',
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
                controller: controllersueno,
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
                      setState(() {
                        resultsueno = controllersueno.text;
                      });
                      await aniadirsueno(resultsueno);
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
      ),
    );
  }
}

class PesoPag extends StatefulWidget {
  PesoPag({Key? key}) : super(key: key);

  @override
  State<PesoPag> createState() => _PesoPagState();
}

class _PesoPagState extends State<PesoPag> {
  TextEditingController controllerpeso = TextEditingController();
  String resultpeso = '0';

  User? user = FirebaseAuth.instance.currentUser;
  CollectionReference PesoUsuarios =
      FirebaseFirestore.instance.collection('PesoUsuarios');

  Future<void> aniadirpeso(
    String valorPeso,
  ) {
    return PesoUsuarios.add({
      'idUsuario': user?.uid,
      'valorPeso': valorPeso,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hoy"),
        backgroundColor: Color.fromARGB(255, 123, 71, 213),
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
        child: Container(
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
                      setState(() {
                        resultpeso = controllerpeso.text;
                      });
                      await aniadirpeso(resultpeso);
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
                " $resultpeso Kilos",
                style: TextStyle(
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
