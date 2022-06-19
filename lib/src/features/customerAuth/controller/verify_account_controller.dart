import 'package:Skill4Cash/src/core/utilities/base_change_notifier.dart';
import 'package:get/get.dart';

import '../../../core/routes/route_manager.dart';
import '../../../service/authentication_service.dart';
import '../../../service/network/failure.dart';

class VerifyAccountController extends BaseChangeNotifier {
  final _service = AuthenticationService();

  Future verifyCustomer({required String code}) async {
    setState(state: AppState.loading);

    try {
      await _service.verifyCustomerOTP(code: code);

      Get.offAllNamed(CustomerRoutes.customerLoginRoute);
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
