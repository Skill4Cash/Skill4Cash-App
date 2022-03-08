import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_textfield.dart';

class CustomerLogin extends StatelessWidget {
  const CustomerLogin({Key? key}) : super(key: key);

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
                      onPressed: () {
                        Navigator.pushNamed(context, CustomerRoutes.customerHomeRoute);
                      },
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
                        .pushNamed(CustomerRoutes.customerSignUpRoute),
                    child: Text(
                      " Sign Up",
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
                        .pushNamed(ServiceProviderRoutes.serviceLoginRoute),
                    child: Text(
                      " Service provider Sign In",
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
