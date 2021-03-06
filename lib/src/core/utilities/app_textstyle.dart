import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

/// App TextStyles

TextStyle heading1(BuildContext context) => TextStyle(
      color: kTextColor,
      fontSize: 26, //18

      fontWeight: FontWeight.bold,
    );

TextStyle heading2(BuildContext context) => TextStyle(
      color: kTextColor,
      fontSize: 22,
      //16
      fontWeight: FontWeight.w500,
    );

TextStyle bodyNormalText(BuildContext context) => TextStyle(
      color: kTextColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    );

TextStyle bodySmallText(BuildContext context) => TextStyle(
      color: kTextColor,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    );

TextStyle bodyTinyText(BuildContext context) => TextStyle(
      color: kTextColor,
      fontSize: 10,
      fontWeight: FontWeight.w400,
    );

TextStyle labelText(BuildContext context) => TextStyle(
      color: kTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    );

TextStyle planlistText(BuildContext context) => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: kTextColor,
    );

TextStyle serviceCategoryText(BuildContext context) => TextStyle(
  color: kHintColor,
  fontSize: 12,
  fontWeight: FontWeight.w500,
);
