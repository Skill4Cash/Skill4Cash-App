import 'package:flutter/material.dart';

extension ValidationExtension on BuildContext {
  String? validateFieldNotEmpty(String? value) =>
      value == null || value.isEmpty ? 'Field cannot be empty' : null;

  String? validateNumber(int? value) =>
      value == null || value.isNaN ? 'Enter a valid amount' : null;

  String? validateFieldNotNull<T>(T? value) =>
      value == null ? 'Field cannot be empty' : null;

  String? validateFullName<T>(String? value) {
    if (value == null) return 'Field cannot be empty';

    if (value.isEmpty) return 'Field cannot be empty';

    if (value.split(' ').length < 2) return 'Please enter your FULL NAME';
    return null;
  }

  String? validateDropDown(String? value) =>
      value == null || value.isEmpty ? 'Select an option' : null;

  String? validateEmailAddress(String? value) {
    if (value == null) return 'Field cannot be empty';

    if (value.isEmpty) return 'Field cannot be empty';

    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);

    return !emailValid ? 'Enter a Valid Email Address' : null;
  }

  String? validatePassword(String? value) => value == null || value.length < 6
      ? 'Password must have 6 or more characters'
      : null;

  String? validateConfirmPassword(String value, String confirm) =>
      value != confirm || value.length < 6
          ? 'Password must have 6 or more characters'
          : null;

  String? validatePhoneNumber(String? value) =>
      value == null || value.length < 11 ? 'Enter a valid Phone Number' : null;
}
