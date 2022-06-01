import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class AppProvider extends ChangeNotifier {
  String name = "Name";
  void changeName(String newName) {
    name = newName;
    notifyListeners();
  }
}