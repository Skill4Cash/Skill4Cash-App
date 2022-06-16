import 'package:Skill4Cash/src/service/network/api_service.dart';

class AuthenticationService {
  ApiService _helper = ApiService();

  Future loginCustomer(String email, String password) async {
    var loginCustomerResponse = await _helper.post(
      "/login/",
      body: {
        "email": email,
        "password": password,
      },
    );

    print(loginCustomerResponse.toString());
    return loginCustomerResponse;
  }

  Future signupCustomer(
      {required String firstName,
      required String lastName,
      required String email,
      required String phoneNumber,
      required String password,
      required String confirmPassword}) async {
    var createCustomerResponse = await _helper.post(
      "/customers/",
      body: {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone_number": "phoneNumber",
        "password": password,
        "confirm_password": confirmPassword,
        "location": "location",
      },
    );

    print(createCustomerResponse.toString());
    return createCustomerResponse;
  }

  Future verifyCustomerOTP({required String code}) async {
    var customerOTPResponse = await _helper.post(
      "/otp/verification/",
      body: {
        "code": code,
      },
    );

    print(customerOTPResponse.toString());
    return customerOTPResponse;
  }
}
