import 'package:flutter/material.dart';

class QuantityProvider extends ChangeNotifier {
  int _currentNumber = 1;
  List<double> _baseIngredientsAmount = [];
  int get currentNumber => _currentNumber;

  void setBaseIngredientsAmount(List<double> amounts) {
    _baseIngredientsAmount = amounts;
    notifyListeners();
  }

  List<String> get updateIngredientsAmount {
    return _baseIngredientsAmount
        .map<String>((amount) => (amount * _currentNumber).toStringAsFixed(1))
        .toList();
  }

  void increaseQuantity() {
    _currentNumber++;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (_currentNumber > 1) {
      _currentNumber--;
      notifyListeners();
    }
  }
}
