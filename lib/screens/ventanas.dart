import 'package:flutter/material.dart';

enum VentanasState { normal, detalles, cart }

class Ventanas with ChangeNotifier {
  VentanasState ventanasState = VentanasState.normal;

  void changeToNormal() {
    ventanasState = VentanasState.normal;
    notifyListeners();
  }

  void changeTocart() {
    ventanasState = VentanasState.cart;
    notifyListeners();
  }
}
