import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/views/widgets/app_button.dart';
import 'package:Skill4Cash/src/views/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: kWhiteColor,
//        leading: GestureDetector(
//          onTap: () => Navigator.of(context).pop(),
//          child: Icon(
//            Icons.arrow_back_ios,
//            size: 16,
//            color: kBlackColor,
//          ),
//        ),
//        title: Text(
//          "Change Email Address",
//          style: heading2(context),
//        ),
//      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kExtraLargeVerticalSpacing,
            kExtraLargeVerticalSpacing,
            Text(
              "Verify your account",
              style: heading1(context),
            ),
            AppTextField(
              label: "",
              hintText: "Enter OTP",
              title:
                  "Please, verify your account by clicking on the link below",
            ),
            kSmallVerticalSpacing,
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    label: "Apply".toUpperCase(),
                    color: kPrimaryColor,
//              size: 12,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            kLargeVerticalSpacing
          ],
        ),
      ),
    );
  }
}
