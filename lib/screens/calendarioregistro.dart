import 'dart:core';
import 'dart:ffi';

import 'package:calendar_calendar/calendar_calendar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

User? user = FirebaseAuth.instance.currentUser; // <- Datos del usuario

final FirebaseAuth _auth = FirebaseAuth.instance;
late Date fechaSeleccionada;

late String fechaSeleccionadaString;

String nombre() {
  String? nullableString = _auth.currentUser?.displayName;
  String usuario = nullableString ?? 'default';
  return usuario;
}

String googleImg() {
  var us;
  us = _auth.currentUser?.photoURL;
  if (us == null) {
    return 'https://imagenesaplicacionesweb.000webhostapp.com/imagenes/person.jpg';
  } else {
    return us;
  }
}

ClipRRect imagenUser() {
  var us;
  us = _auth.currentUser?.photoURL;
  if (us == null) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(90.0),
      child: Image.asset('assets/imag/mari.jpg'),
    );
  } else {
    return ClipRRect(
      borderRadius: BorderRadius.circular(90.0),
      child: Image.network(googleImg()),
    );
  }
}

showAlertDialog(BuildContext context, String msj, String ttl) {
  AlertDialog alert = AlertDialog(
    title: Text(ttl),
    content: Text(msj),
    actions: [],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}

class Calendario1 extends StatefulWidget {
  @override
  State<Calendario1> createState() => _Calendario1State();
}

class _Calendario1State extends State<Calendario1> {
  /* --- Funcion para calcular el periodo --- */
  void calcularPeriodo(_fechaSeleccionadaString) async {
    var datosUsuario = await FirebaseFirestore.instance
        .collection('data_usuarios')
        .doc(user?.uid)
        .get();

    var numDiasPeriodo = datosUsuario['duracion_periodo'];

    DateTime fechaActual = DateTime.now();
    print(_fechaSeleccionadaString);

    var inputFormat = DateFormat('dd-MM-yyyy'); // <- Formato de la fecha
    var parseFechaActual = inputFormat
        .parse('${fechaActual.day}-${fechaActual.month}-${fechaActual.year}');
    var fechaUltimoPeriodo = inputFormat.parse(_fechaSeleccionadaString);

    final proxPeriodo = fechaUltimoPeriodo.add(Duration(days: numDiasPeriodo));
    var fechaProxPeriodo = inputFormat
        .parse('${proxPeriodo.day}-${proxPeriodo.month}-${proxPeriodo.year}');

    var diferenciaDias = fechaProxPeriodo.difference(parseFechaActual).inDays;

    if (diferenciaDias <= 0) diferenciaDias = 0;

    await FirebaseFirestore.instance
        .collection('data_usuarios')
        .doc(user?.uid)
        .update({
      'numero_ciclo': diferenciaDias,
    });
  }

  void calcularFechaOvulacion(_fechaSeleccionada) async {
    var meses31dias = [1, 3, 5, 7, 8, 10, 12];
    var meses30dias = [4, 6, 9, 11];
    var fechaOvulacion = _fechaSeleccionada.day + 10;
    if (_fechaSeleccionada.month == 2) {
      if (fechaOvulacion >= 28) {
        fechaOvulacion = fechaOvulacion - 28;
      }
    } else if (meses31dias.contains(_fechaSeleccionada.month)) {
      if (fechaOvulacion >= 31) {
        fechaOvulacion = fechaOvulacion - 31;
      }
    } else if (meses30dias.contains(_fechaSeleccionada.month)) {
      if (fechaOvulacion >= 30) {
        fechaOvulacion = fechaOvulacion - 30;
      }
    }
    await FirebaseFirestore.instance
        .collection('data_usuarios')
        .doc(user?.uid)
        .update({'faltan_dias_ovulacion': fechaOvulacion});
  }

  void calcularFechaFertilidad(_fechaSeleccionada) async {
    var meses31dias = [1, 3, 5, 7, 8, 10, 12];
    var meses30dias = [4, 6, 9, 11];
    var fechaFertilidadInicio = _fechaSeleccionada.day + 6;
    var fechaFertilidadFin = fechaFertilidadInicio + 6;
    if (_fechaSeleccionada.month == 2) {
      if (fechaFertilidadInicio >= 28) {
        fechaFertilidadInicio = fechaFertilidadInicio - 28;
        fechaFertilidadFin = fechaFertilidadFin - 28;
      }
    } else if (meses31dias.contains(_fechaSeleccionada.month)) {
      if (fechaFertilidadInicio >= 31) {
        fechaFertilidadInicio = fechaFertilidadInicio - 31;
        fechaFertilidadFin = fechaFertilidadFin - 31;
      }
    } else if (meses30dias.contains(_fechaSeleccionada.month)) {
      if (fechaFertilidadInicio >= 30) {
        fechaFertilidadInicio = fechaFertilidadInicio - 30;
        fechaFertilidadFin = fechaFertilidadFin - 30;
      }
    }
    await FirebaseFirestore.instance
        .collection('data_usuarios')
        .doc(user?.uid)
        .update({
      'faltan_dias_fertilidad_inicio': fechaFertilidadInicio,
      'faltan_dias_fertilidad_fin': fechaFertilidadFin,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.1),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
                width: 50.0,
              ),
              IconButton(
                onPressed: () {
                  showAlertDialog(context, 'Bienvenida ' + nombre(), 'Hola');
                },
                icon: imagenUser(),
                iconSize: 100.0,
              ),
              Text(nombre()),
              SizedBox(
                width: 20.0,
                height: 20.0,
              ),
              Container(
                child: Text(
                  'Selecciona la fecha de tu nuevo inicio de periodo',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                width: 20.0,
                height: 20.0,
              ),

              // ----------------------- Calendario -----------------------
              Container(
                width: 300.0,
                height: 350.0,
                child: Calendar(
                  weekendOpacityEnable: true,
                  previous: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300]!,
                              spreadRadius: 1.5,
                              blurRadius: 5,
                              offset: Offset(2.0, 0.0))
                        ]),
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                        color: Color.fromARGB(255, 1, 203, 230),
                      ),
                    ),
                  ),
                  next: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300]!,
                              spreadRadius: 1.5,
                              blurRadius: 5,
                              offset: Offset(2.0, 0.0))
                        ]),
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Color.fromARGB(255, 1, 203, 230),
                      ),
                    ),
                  ),
                  space: 20,
                  onSelected: (date) {
                    fechaSeleccionada = date!;
                    fechaSeleccionadaString =
                        '${date.day}-${date.month}-${date.year}';
                  },
                  backgroundColor: Colors.white,
                  activeColor: Color.fromARGB(255, 1, 203, 230),
                  textStyleDays: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                  textStyleWeekDay: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  titleStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  selectedStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // Container(
              //   child: RaisedButton(
              //     disabledColor: Colors.amber,
              //     child: Text(
              //       "Guardar",
              //       style: TextStyle(color: Colors.white),
              //     ),
              //     splashColor: Color.fromARGB(255, 123, 71, 213),
              //     color: Color.fromARGB(255, 1, 203, 230),
              //     onPressed: () {
              //       calcularFechaOvulacion(fechaSeleccionada);
              //       calcularFechaFertilidad(fechaSeleccionada);
              //       calcularPeriodo(fechaSeleccionadaString);
              //     },
              //   ),
              // ),
            ],
          ),
        )),
      ),
    );
  }
}
