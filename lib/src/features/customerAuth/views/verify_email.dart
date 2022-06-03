import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/features/widgets/app_backgrond.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_button.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Expanded(
          child: Form(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 10,
                    ),
                    Text(
                      "Verify your account",
                      style: heading2(context),
                    ),
                    kSmallVerticalSpacing,
                    Text(
                      "Kindly verify your email via the link we have sent to newnew@gmail.com",
                      style: bodyNormalText(context),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AppButton(
                            color: kPrimaryColor,
                            label: "OPEN EMAIL",
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, CustomerRoutes.customerHomeRoute);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
