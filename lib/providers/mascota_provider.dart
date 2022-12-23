import 'package:flutter/material.dart';

class MascotaProvider with ChangeNotifier {
  var mascotaUI = 'https://assets1.lottiefiles.com/private_files/lf30_lhyi1kz7.json';

  get mascota => mascotaUI;

  Future<void> setMascota(mascotaUrl) async {
    mascotaUI = mascotaUrl;
    notifyListeners();
  }
}