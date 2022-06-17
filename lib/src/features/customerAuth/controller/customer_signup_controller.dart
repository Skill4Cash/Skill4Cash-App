import 'package:Skill4Cash/src/core/utilities/base_change_notifier.dart';
import 'package:get/get.dart';

import '../../../core/routes/route_manager.dart';
import '../../../service/authentication_service.dart';
import '../../../service/network/failure.dart';

class CustomerSignupController extends BaseChangeNotifier {
  final _service = AuthenticationService();

  bool visibility = false;
  onVisibilityChange() {
    visibility = !visibility;
    setState();
  }

  Future signupCustomer(
      {required String firstName,
      required String lastName,
      required String email,
      required String phoneNumber,
      required String password,
      required String confirmPassword}) async {
    setState(state: AppState.loading);

    try {
      await _service.signupCustomer(
          firstName: firstName,
          lastName: lastName,
          email: email,
          phoneNumber: phoneNumber,
          password: password,
          confirmPassword: confirmPassword);

      Get.offAllNamed(CustomerRoutes.verifyEmail);
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
