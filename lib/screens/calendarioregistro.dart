import 'dart:core';
import 'dart:ffi';

import 'package:calendar_calendar/calendar_calendar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:confidentapp/widgets/fill_button.dart';
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
              const SizedBox(
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
              const SizedBox(
                width: 20.0,
                height: 20.0,
              ),
              const Text(
                'Selecciona la fecha de tu nuevo inicio de periodo',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              ),
              const SizedBox(
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
                    child: const CircleAvatar(
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
                    child: const CircleAvatar(
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
                  activeColor: const Color.fromARGB(255, 1, 203, 230),
                  textStyleDays: const TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                  textStyleWeekDay: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  titleStyle:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  // ignore: prefer_const_constructors
                  selectedStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(40),
                child: FillButton(
                  text: 'Guardar',
                  onPressedFB: () {
                    // calcularFechaOvulacion(fechaSeleccionada);
                    // calcularFechaFertilidad(fechaSeleccionada);
                    // calcularPeriodo(fechaSeleccionadaString);
                  },
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
