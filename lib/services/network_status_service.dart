import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/routes/app_routes.dart';
import 'package:internet_connection_checker/widgets/network_error_item.dart';

class NetworkStatusService extends GetxService {
  NetworkStatusService() {
    DataConnectionChecker().onStatusChange.listen(
          (status) async {
        _getNetworkStatus(status);
      },
    );
  }

  void _getNetworkStatus(DataConnectionStatus status) {
    if (status == DataConnectionStatus.connected) {
      _validateSession(); //after internet connected it will redirect to home page
    } else {
      Get.dialog(NetworkErrorItem(), useSafeArea: false); // If internet loss then it will show the NetworkErrorItem widget
    }
  }

  void _validateSession() {
    Get.offNamedUntil(AppRoutes.home, (_) => false); //Here redirecting to home page
  }
}
