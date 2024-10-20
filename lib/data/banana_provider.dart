import 'package:flutter/cupertino.dart';

class BananaProvider extends ChangeNotifier {
  int counter = 0;
  void counterRise() {
    counter++;
    notifyListeners();
  }
}
