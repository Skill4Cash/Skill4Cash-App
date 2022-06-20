import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/features/widgets/app_backgrond.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/routes/route_manager.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_textfield.dart';

class ServiceLogin extends StatelessWidget {
  const ServiceLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: AppBackground(
          child: Expanded(
            child: Form(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 7,
                      ),
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
                                Navigator.pushNamed(context,
                                    ServiceProviderRoutes.spDashboardRoute);
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
                            onPressed: () => Navigator.of(context).pushNamed(
                                ServiceProviderRoutes.spSignUpRoute),
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
                            child: InkWell(
                              onTap: () => Get.offAllNamed(ServiceProviderRoutes.spDashboardRoute),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 18),
                                decoration:
                                    BoxDecoration(color: kWhiteColor, boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFEEEEEE),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                  ),
                                ]),
                                child: Center(child: Text("Sign in with google")),
                              ),
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
                                .pushNamed(CustomerRoutes.customerLoginRoute),
                            child: Text(
                              "Customer Sign In",
                              style: bodyNormalText(context)
                                  .copyWith(color: kPrimaryColor),
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
      ),
    );
  }
}
