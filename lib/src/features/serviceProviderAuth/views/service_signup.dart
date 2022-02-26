import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/features/serviceProviderAuth/views/service_login.dart';
import 'package:Skill4Cash/src/views/widgets/app_button.dart';
import 'package:Skill4Cash/src/views/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

import '../../customerAuth/views/customer_signup.dart';

class ServiceSignUp extends StatelessWidget {
  const ServiceSignUp({Key? key}) : super(key: key);
  static const routeName = "/serviceSignUp";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Welcome",
                    style: heading1(context).copyWith(fontFamily: "Roboto"),
                  ),
                  kMediumVerticalSpacing,
                  Text(
                    "Sign up",
                    style: heading2(context),
                  ),
                  Text(
                    "Sign Up as a Service Provider",
                    style: bodyNormalText(context),
                  ),
                  kMediumVerticalSpacing,
                  AppTextField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    label: "First name",
                    hintText: "First name",
                  ),
                  kSmallVerticalSpacing,
                  AppTextField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    label: "Last name",
                    hintText: "Last name",
                  ),
                  kSmallVerticalSpacing,
                  AppTextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    label: "Email",
                    hintText: "Email",
                  ),
                  kSmallVerticalSpacing,
                  AppTextField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    label: "Phone number",
                    hintText: "Phone number",
                  ),
                  kSmallVerticalSpacing,
                  AppTextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    label: "Password",
                    hintText: "Password",
                    suffixIcon: Icon(Icons.visibility),
                  ),
                  kSmallVerticalSpacing,
                  AppTextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    label: "Confirm password",
                    hintText: "Confirm password",
                    suffixIcon: Icon(Icons.visibility),
                  ),
                  kSmallVerticalSpacing,
                  Row(
                    children: [
                      Expanded(
                        child: AppButton(
                          color: kPrimaryColor,
                          label: "SIGN IN",
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  kSmallVerticalSpacing,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamed(ServiceLogin.routeName),
                        child: Text(
                          " Sign in",
                          style: bodyNormalText(context)
                              .copyWith(color: kPrimaryColor),
                        ),
                      )
                    ],
                  ),
                  kSmallVerticalSpacing,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 18),
                          decoration:
                              BoxDecoration(color: kWhiteColor, boxShadow: [
                            BoxShadow(
                              color: Color(0xFFEEEEEE),
                              spreadRadius: 10,
                              blurRadius: 10,
                            ),
                          ]),
                          child: Center(child: Text("Sign in with google")),
                        ),
                      ),
                    ],
                  ),
                  kSmallVerticalSpacing,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Tap here to switch to "),
                      TextButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamed(CustomerSignUp.routeName),
                        child: Text(
                          "Customer Sign Up",
                          style: bodyNormalText(context)
                              .copyWith(color: kPrimaryColor),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
