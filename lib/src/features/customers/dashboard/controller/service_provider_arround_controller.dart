import 'package:Skill4Cash/src/core/utilities/base_change_notifier.dart';
import 'package:Skill4Cash/src/features/customers/dashboard/model/sp_list_response.dart';
import 'package:Skill4Cash/src/service/dashboard_service.dart';
import 'package:get/get.dart';

import '../../../../service/network/failure.dart';

class ServiceProviderAroundController extends BaseChangeNotifier {
  final _service = DashboardService();

  void onOnit() {
    getServiceProviders();
    super.onInit();
  }

  SpListResponse? _spListResponse;
  SpListResponse? get spListResponse => _spListResponse;

  Future getServiceProviders() async {
    setState(state: AppState.loading);

    try {
      _spListResponse = await _service.serviceProviderList();
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
