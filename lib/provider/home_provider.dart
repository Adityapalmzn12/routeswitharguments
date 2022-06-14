import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{
//internal counter
  int  counter=0;
//This is getter function


//increment function
  increment(){
    counter++;
    notifyListeners();
  }
  //decrement function
  decrement(){
    counter--;
    notifyListeners();
  }
}