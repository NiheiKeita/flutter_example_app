import 'package:flutter/foundation.dart';

class CounterController extends ChangeNotifier {
  CounterController({int initialCount = 0}) : _count = initialCount;

  int _count;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
