import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:confidentapp/screens/home.dart';
import 'package:confidentapp/screens/tips.dart';
import 'package:confidentapp/screens/tipshop.dart';

import 'pantallacirculo.dart';
import 'calendarioregistro.dart';
import 'informe.dart';

import 'configurar.dart';
import 'tips.dart';
import 'tipshop.dart';

class Barra extends StatefulWidget {
  @override
  State<Barra> createState() => _BarraState();
}

class _BarraState extends State<Barra> {
  final navigationkey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;
  final screens = [
    circulo(),
    Calendario1(),
    informe(),
    tips(),
    configurar(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.calendar_month, size: 30),
      Icon(Icons.info, size: 30),
      Icon(Icons.favorite, size: 30),
      Icon(Icons.settings, size: 30),
    ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 203, 230),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          key: navigationkey,
          color: Color.fromARGB(255, 132, 76, 228),
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
