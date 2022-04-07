import 'package:get/get.dart';
import 'package:internet_connection_checker/home/home_page.dart';
import 'package:internet_connection_checker/home/home_page_binding.dart';
import 'package:internet_connection_checker/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
