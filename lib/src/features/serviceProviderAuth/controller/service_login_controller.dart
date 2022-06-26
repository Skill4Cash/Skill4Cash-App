import 'package:Skill4Cash/src/core/utilities/base_change_notifier.dart';
import 'package:Skill4Cash/src/service/authentication_service.dart';
import 'package:get/get.dart';

import '../../../core/routes/route_manager.dart';
import '../../../service/network/failure.dart';

class ServiceLoginController extends BaseChangeNotifier {
  final _service = AuthenticationService();
  bool visibility = false;
  onVisibilityChange() {
    visibility = !visibility;
    setState();
  }

  Future login(String email, String password) async {
    setState(state: AppState.loading);

    try {
      await _service.loginServiceProvider(email, password);
      Get.offAllNamed(ServiceProviderRoutes.spDashboardRoute);
    } on Failure catch (f) {
      setState(state: AppState.idle);
      Get.snackbar(
        '',
        f.message,
        colorText: Get.theme.colorScheme.onError,
        backgroundColor: Get.theme.errorColor,
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 0,
      );
    } finally {
      setState(state: AppState.idle);
    }
  }
}
