import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

/// App TextStyles

TextStyle heading1(BuildContext context) => TextStyle(
      color: kTextColor,
      fontSize: responsive18(context),
      fontWeight: FontWeight.bold,
    );

TextStyle heading2(BuildContext context) => TextStyle(
      color: kTextColor,
      fontSize: responsive16(context),
      fontWeight: FontWeight.w500,
    );

TextStyle heading3(BuildContext context) => TextStyle(
      color: kTextColor,
      fontSize: responsive24(context),
      fontWeight: FontWeight.w400,
    );

TextStyle bodyNormalText(BuildContext context) => TextStyle(
      color: kTextColor,
      fontSize: responsive14(context),
      fontWeight: FontWeight.w400,
    );

TextStyle bodySmallText(BuildContext context) => TextStyle(
      color: kTextColor,
      fontSize: responsive12(context),
    );

TextStyle bodyTinyText(BuildContext context) => TextStyle(
      color: kTextColor,
      fontSize: responsive10(context),
      fontWeight: FontWeight.w400,
    );

TextStyle labelText(BuildContext context) => TextStyle(
      color: kTextColor,
      fontSize: responsive18(context),
      fontWeight: FontWeight.w400,
    );

TextStyle planlistText(BuildContext context) => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: kTextColor,
    );
