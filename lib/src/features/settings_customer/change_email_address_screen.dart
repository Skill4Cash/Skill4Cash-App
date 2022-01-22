import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/views/widgets/app_button.dart';
import 'package:Skill4Cash/src/views/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

import 'authentication_screen.dart';

class ChangeEmailAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: kBlackColor,
          ),
        ),
        title: Text(
          "Change Email Address",
          style: heading2(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            kExtraLargeVerticalSpacing,
            AppTextField(
              hintText: "Enter email address",
              title: "Change Email Address",
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    label: "Apply".toUpperCase(),
                    color: kPrimaryColor,
//              size: 12,
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => AuthenticationScreen())),
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
