import 'package:Skill4Cash/src/features/customerAuth/controller/customer_login_controller.dart';
import 'package:get/get.dart';

class ServicesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerLoginController>(() => CustomerLoginController());
  }
}
