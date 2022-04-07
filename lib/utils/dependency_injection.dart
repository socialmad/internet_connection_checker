import 'package:get/get.dart';
import 'package:internet_connection_checker/services/network_status_service.dart';

class DependencyInjection {
  static void init() async {
    //services
    Get.put<NetworkStatusService>(NetworkStatusService(), permanent: true);
  }
}