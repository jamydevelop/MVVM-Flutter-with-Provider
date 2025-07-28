import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counterVal = 0;
  int get counterVal => _counterVal;

  //Add +1 on value
  void increment() {
    _counterVal++;
    notifyListeners(); // LIKE: update() or setState()
  }

   //Minus -1 on value
  void decrement() {
    _counterVal--;
    notifyListeners(); // LIKE: update() or setState()
  }
}