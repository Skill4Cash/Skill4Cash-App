import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/features/widgets/widgets.dart';
import 'package:flutter/material.dart';

class VerifyAccountSp extends StatelessWidget {
  const VerifyAccountSp({ Key? key }) : super(key: key);

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
                    Navigator.pushNamed(context, ServiceProviderRoutes.verifyAccountRoute);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}