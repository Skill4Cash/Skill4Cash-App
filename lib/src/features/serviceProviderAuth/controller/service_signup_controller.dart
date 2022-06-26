import 'package:Skill4Cash/src/core/utilities/base_change_notifier.dart';
import 'package:get/get.dart';

import '../../../core/routes/route_manager.dart';
import '../../../service/authentication_service.dart';
import '../../../service/network/failure.dart';

class ServiceSignupController extends BaseChangeNotifier {
  final _service = AuthenticationService();

  bool visibility = false;
  onVisibilityChange() {
    visibility = !visibility;
    setState();
  }

  Future signupServiceProvider(
      {required String firstName,
      required String lastName,
      required String email,
      required String phoneNumber,
      required String password,
      required String businessName,
      required String confirmPassword}) async {
    setState(state: AppState.loading);

    try {
      String phone;
      phoneNumber.substring(1);

      phone = phoneNumber;
      phone = phoneNumber.replaceFirst("0", "+234");

      await _service.signupServiceProvider(
          firstName: firstName,
          lastName: lastName,
          email: email,
          phoneNumber: phone,
          password: password,
          confirmPassword: confirmPassword,
          businessName: businessName);
      Get.offNamed(ServiceProviderRoutes.spLoginRoute);
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
