class SpListResponse {
  SpListResponse({
    required this.message,
    required this.data,
  });
  late final String message;
  late final List<Data> data;

  SpListResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.user,
    required this.spId,
    required this.businessName,
    required this.isVerifiedBusiness,
  });
  late final User user;
  late final String spId;
  late final String businessName;
  late final bool isVerifiedBusiness;

  Data.fromJson(Map<String, dynamic> json) {
    user = User.fromJson(json['user']);
    spId = json['sp_id'];
    businessName = json['business_name'];
    isVerifiedBusiness = json['is_verified_business'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user'] = user.toJson();
    _data['sp_id'] = spId;
    _data['business_name'] = businessName;
    _data['is_verified_business'] = isVerifiedBusiness;
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.location,
    required this.isVerified,
    required this.emailVerification,
    required this.phoneVerification,
    required this.role,
  });
  late final String id;
  late final String firstName;
  late final String lastName;
  late final String email;
  late final String phoneNumber;
  late final String location;
  late final bool isVerified;
  late final bool emailVerification;
  late final bool phoneVerification;
  late final String role;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    location = json['location'];
    isVerified = json['is_verified'];
    emailVerification = json['email_verification'];
    phoneVerification = json['phone_verification'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['email'] = email;
    _data['phone_number'] = phoneNumber;
    _data['location'] = location;
    _data['is_verified'] = isVerified;
    _data['email_verification'] = emailVerification;
    _data['phone_verification'] = phoneVerification;
    _data['role'] = role;
    return _data;
  }
}
