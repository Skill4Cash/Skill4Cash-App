import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/views/widgets/app_button.dart';
import 'package:Skill4Cash/src/views/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

class VerifyAccount extends StatelessWidget {
  const VerifyAccount({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPad),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kExtraLargeVerticalSpacing,
            kExtraLargeVerticalSpacing,
            Text("Verify your account", style: heading1(context),),
            kSmallVerticalSpacing,
            AppTextField(
                hintText: "Enter otp",
                title: "Please enter the verification code we sent to your provided phone number",
              ),
            kLargeVerticalSpacing,
              Container(
                width: double.infinity,
                child: AppButton(
                  label: "verify".toUpperCase(),
                  color: kPrimaryColor,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => VerifyAccount()));
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}