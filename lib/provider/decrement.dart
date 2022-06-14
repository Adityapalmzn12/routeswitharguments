import 'package:flutter/material.dart';

class Decrement extends ChangeNotifier{
  int newCount=0;
  void decrements(){
    newCount--;
    notifyListeners();
  }
}