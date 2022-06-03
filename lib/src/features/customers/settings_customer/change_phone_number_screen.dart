import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/features/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChangePhoneNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: kBlackColor,
          ),
        ),
        title: Text(
          "Change phone number",
          style: heading2(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            kExtraLargeVerticalSpacing,
            AppTextField(
              hintText: "Enter phone number",
              title: "Change Number or another copy",
            ),
            Spacer(),
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
