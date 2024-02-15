import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

import '../../data/source/repository/app_repository.dart';
import '../../di/di.dart';

class BottomProvider extends ChangeNotifier{
  int index = 0;
  final repository = getIt<AppRepository>();
  var  count = 0;
  var logger = Logger();

  BottomProvider(){
    setCount();
  }

  void setCount() {
    count = repository.getSavedProducts().length;
    notifyListeners();
  }

  void increment(){
    count ++;
    notifyListeners();
  }

  void decrement(){
    count --;
    notifyListeners();
  }

  void clearCount() {
    count = 0;
    logger.d(count);
    notifyListeners();
  }

  void changeIndex(int newIndex) {
    index = newIndex;
    notifyListeners();
  }


}