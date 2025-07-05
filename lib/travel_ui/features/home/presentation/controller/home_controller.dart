import 'package:flutter/cupertino.dart';

class HomeController {
  HomeController._internal();
  static final HomeController _instance = HomeController._internal();
  factory HomeController() {
    return _instance;
  }
  ValueNotifier<int> index = ValueNotifier<int>(0);

}
