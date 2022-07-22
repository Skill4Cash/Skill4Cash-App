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

  List<SpListResponse> _searchResult = [];
  List<SpListResponse> get searchResult => _searchResult;

  Future getServiceProviders() async {
    setState(state: AppState.loading);

    try {
      _spListResponse = await _service.serviceProviderList();
      // setState();
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

  // bool _isSearching = false;

  void searchProviders(String searchText) {
    _searchResult.clear();

    // if (_isSearching != null) {
    for (int i = 0; i < _spListResponse!.data.length; i++) {
      SpListResponse data = _spListResponse!;
      if (data.data[i].businessName
          .toLowerCase()
          .contains(searchText.toLowerCase())) {
        searchResult.add(data);
        setState();
      }
      // }
    }
  }
}
