import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:confidentapp/constants/db.dart';
import 'package:confidentapp/providers/mascota_provider.dart';
import 'package:confidentapp/providers/tabs_provider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:confidentapp/screens/tips.dart';
import 'package:provider/provider.dart';

import 'pantallacirculo.dart';
import 'calendarioregistro.dart';
import 'informe.dart';

import 'configurar.dart';
import 'package:provider/provider.dart';

class Barra extends StatelessWidget {
  const Barra({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    TabsProvider tabIndex = context.watch<TabsProvider>();
    final navigationkey = GlobalKey<CurvedNavigationBarState>();
    final screens = [
      const Circulo(),
      Calendario1(),
      const Informe(),
      tips(),
      const Configurar(),
    ];
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.calendar_month, size: 30),
      const Icon(Icons.info, size: 30),
      const Icon(Icons.favorite, size: 30),
      const Icon(Icons.settings, size: 30),
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 203, 230),
      body: screens[tabIndex.index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          key: navigationkey,
          color: const Color.fromARGB(255, 132, 76, 228),
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          index: tabIndex.index,
          items: items,
          onTap: (index) => tabIndex.setTab(index),
        ),
      ),
    );
  }
}
