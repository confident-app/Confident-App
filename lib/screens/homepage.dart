import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:confidentapp/screens/barra.dart';
import 'package:confidentapp/screens/date_picker.dart';
import 'package:confidentapp/screens/home.dart';
import 'package:confidentapp/screens/signin.dart';
import 'package:confidentapp/utils/authentication.dart';
import 'package:calendar_calendar/calendar_calendar.dart';
import 'package:confidentapp/widgets/fill_button.dart';
import 'package:confidentapp/widgets/outline_button_select.dart';
import 'package:lottie/lottie.dart';
import 'package:intl/intl.dart';
import 'calendario.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /* --- Variables temporales --- */
  TextEditingController controllerpregu1 = TextEditingController();
  int numultima = 0, numdias = 0, numciclo = 0, numDiasPeriodo = 0;

  //CONTROLADORES PARA EL INGRESO DE DATOS EN REGISTRO
  /* --- Variables almacenar base de datos --- */
  User? user = FirebaseAuth.instance.currentUser; // <- Datos del usuario
  DateTime? _fechaUltimoPeriodo;
  TextEditingController controllerpregu2 = TextEditingController();
  TextEditingController controllerpregu3 = TextEditingController();
  int diasFaltan = 0;
  bool perteneceUpec = false;

  /* --- Funcion para registrar usuario --- */
  Future<void> registrarPeriodoBD() async {
    calcularDias();
    calcularPeriodo();
    var docUser =
        FirebaseFirestore.instance.collection('data_usuarios').doc(user?.uid);

    await docUser.set({
      'id_usuario': user?.uid,
      'pertenece_a_la_upec': perteneceUpec,
      'fecha_ultimo_periodo': _fechaUltimoPeriodo,
      'numero_ciclo': diasFaltan,
      'duracion_periodo': int.parse(controllerpregu2.text),
      'duracion_ciclo': int.parse(controllerpregu3.text),
      'faltan_dias_ovulacion': 0,
      'faltan_dias_fertilidad_inicio': 0,
      'faltan_dias_fertilidad_fin': 0,
    });
  }

  /* --- Funcion para calcular el periodo --- */
  void calcularPeriodo() {
    DateTime fechaActual = DateTime.now();

    var inputFormat = DateFormat('dd-MM-yyyy'); // <- Formato de la fecha
    var parseFechaActual = inputFormat
        .parse('${fechaActual.day}-${fechaActual.month}-${fechaActual.year}');
    var fechaUltimoPeriodo = inputFormat.parse(controllerpregu1.text);

    final proxPeriodo = fechaUltimoPeriodo.add(Duration(days: numDiasPeriodo));
    var fechaProxPeriodo = inputFormat
        .parse('${proxPeriodo.day}-${proxPeriodo.month}-${proxPeriodo.year}');

    final diferenciaDias = fechaProxPeriodo.difference(parseFechaActual);
    setState(() {
      diasFaltan = diferenciaDias.inDays;
      if (diasFaltan <= 0) diasFaltan = 0;
      _fechaUltimoPeriodo = fechaUltimoPeriodo;
    });
  }

  void calcularDias() {
    setState(() {
      numdias = int.parse(controllerpregu2.text);
      numciclo = int.parse(controllerpregu3.text);
      numDiasPeriodo = numciclo - numdias;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bienvenida a CONFIDENT'),
          backgroundColor: const Color.fromARGB(255, 123, 71, 213),
        ),
        backgroundColor: Colors.white,
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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(children: <Widget>[
                Center(
                  child: Lottie.network(
                      'https://assets9.lottiefiles.com/private_files/lf30_ohapmypv.json',
                      height: 250),
                ),
                const Text(
                  "Registra los datos de tu periodo anterior",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 45, 10, 10),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DatePickerWidget(
                  controllerTF: controllerpregu1,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: controllerpregu2,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      labelText: "¿Cuántos días dura normalmente tú periodo? "),
                  keyboardType: TextInputType.number,
                  cursorColor: const Color.fromARGB(255, 8, 6, 0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: controllerpregu3,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      labelText: "¿Cuantos días dura tu ciclo menstrual?"),
                  keyboardType: TextInputType.number,
                  cursorColor: const Color.fromARGB(255, 8, 6, 0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Pertenece a la Universidad Politècnica Estatal del Carchi",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 45, 10, 10),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                OutlineButtonSelect(
                  onPressedOBS: () => setState(() => perteneceUpec = false),
                  isActive: perteneceUpec == false ? true : false,
                  text: 'No',
                ),
                const SizedBox(
                  height: 15,
                ),
                OutlineButtonSelect(
                  onPressedOBS: () => setState(() => perteneceUpec = true),
                  isActive: perteneceUpec == false ? false : true,
                  text: 'Si',
                ),
                const SizedBox(
                  height: 30,
                ),
                FillButton(
                  text: 'GUARDAR',
                  onPressedFB: () async {
                    await registrarPeriodoBD().then((value) =>
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Barra())));
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
              ]),
            ),
          ),
        ));
  }
}
