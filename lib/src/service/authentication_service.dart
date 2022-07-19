import 'package:Skill4Cash/src/service/network/api_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthenticationService {
  ApiService _helper = ApiService();
  FlutterSecureStorage _storage = FlutterSecureStorage();
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
    print(phoneNumber);
    print(password);
    var createCustomerResponse = await _helper.post(
      "/customers/",
      body: {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone_number": phoneNumber,
        "password": password,
        "confirm_password": confirmPassword,
        "location": await _storage.read(key: "location"),
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

  // Service Provider Authentication

  Future loginServiceProvider(String email, String password) async {
    var loginSPResponse = await _helper.post(
      "/login/",
      body: {
        "email": email,
        "password": password,
      },
    );

    print(loginSPResponse.toString());
    return loginSPResponse;
  }

  Future signupServiceProvider({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
    required String businessName,
  }) async {
    var createSPResponse = await _helper.post(
      "/sp/register/",
      body: {
        'user': {
          "first_name": firstName,
          "last_name": lastName,
          "email": email,
          "phone_number": phoneNumber,
          "password": password,
          "confirm_password": confirmPassword,
          "location": await _storage.read(key: "location"),
        },
        'business_name': businessName,
      },
    );

    print(createSPResponse.toString());
    return createSPResponse;
  }

  Future verifyServiceProviderOTP({required String code}) async {
    var spOTPResponse = await _helper.post(
      "/otp/verification/",
      body: {
        "otp": code,
      },
    );

    print(spOTPResponse.toString());
    return spOTPResponse;
  }
}
