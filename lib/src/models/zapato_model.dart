import 'package:flutter/material.dart';

class ZapatoModel with ChangeNotifier {
  String _assetImage = 'assets/imgs/azul.png';
  double _talla = 7;

  String get assetImage => _assetImage;

  set assetImage(String img) {
    _assetImage = img;
    notifyListeners();
  }

  double get talla => _talla;

  set talla(double talla) {
    _talla = talla;
    notifyListeners();
  }
}
