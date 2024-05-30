import 'package:flutter/cupertino.dart';

class counterprovider extends ChangeNotifier{
  int val=0;
  int get countval=>val;

  void add(){
    val++;
    notifyListeners();
  }
  void sub(){
    val--;
    notifyListeners();
  }
}