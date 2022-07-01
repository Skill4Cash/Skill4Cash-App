import 'package:Skill4Cash/src/features/customers/dashboard/model/sp_list_response.dart';

import 'network/api_service.dart';

class DashboardService {
  ApiService _helper = ApiService();

  Future serviceProviderList() async {
    var serviceProviderListResponse = await _helper.get(
      "/sp/register/",
    );

    print(serviceProviderListResponse.toString());
    return SpListResponse.fromJson(serviceProviderListResponse);
  }
}
