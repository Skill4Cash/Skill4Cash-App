import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/features/customerAuth/views/customer_login.dart';
import 'package:Skill4Cash/src/features/serviceProviderAuth/views/service_signup.dart';
import 'package:Skill4Cash/src/views/widgets/app_button.dart';
import 'package:Skill4Cash/src/views/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

class ServiceLogin extends StatelessWidget {
  const ServiceLogin({Key? key}) : super(key: key);
  static const routeName = "/serviceLogin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: heading1(context).copyWith(fontFamily: "Roboto"),
              ),
              kMediumVerticalSpacing,
              Text(
                "Sign in",
                style: heading2(context),
              ),
              Text(
                "Sign into your Skill4Cash Account",
                style: bodyNormalText(context),
              ),
              kMediumVerticalSpacing,
              AppTextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                label: "Email",
                hintText: "Email",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamed(ServiceSignUp.routeName),
                    child: Text(
                      "Sign Up",
                      style: bodyNormalText(context)
                          .copyWith(color: kPrimaryColor),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                      decoration: BoxDecoration(color: kWhiteColor, boxShadow: [
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
                        .pushNamed(CustomerLogin.routeName),
                    child: Text(
                      "Customer Sign In",
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
    );
  }
}
