import 'package:get/get.dart';

class HomeController extends GetxController {

  int counter = 0;

  void incrementCounter() {
    counter++;
    update(); //update method is nothing but setState
  }

}