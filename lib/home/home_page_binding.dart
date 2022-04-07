import 'package:get/get.dart';
import 'package:internet_connection_checker/home/home_page_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}