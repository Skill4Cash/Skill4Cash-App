import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/base_change_notifier.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/core/utilities/validation_mixin.dart';
import 'package:Skill4Cash/src/features/widgets/app_backgrond.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/routes/route_manager.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_textfield.dart';
import '../controller/service_login_controller.dart';

class ServiceLogin extends StatelessWidget {
  ServiceLogin({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Expanded(
          child: GetBuilder<ServiceLoginController>(
              init: ServiceLoginController(),
              builder: (controller) {
                return Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 5.5,
                          ),
                          Text(
                            "Welcome",
                            style: heading1(context)
                                .copyWith(fontFamily: "Roboto"),
                          ),
                          kMediumVerticalSpacing,
                          Text(
                            "Sign in",
                            style: heading2(context),
                          ),
                          Text(
                            "Sign in to your Skill4Cash Account",
                            style: bodyNormalText(context),
                          ),
                          kMediumVerticalSpacing,
                          AppTextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            label: "Email",
                            validator: (value) =>
                                context.validateEmailAddress(value),
                            controller: emailController,
                            hintText: "Email",
                          ),
                          kSmallVerticalSpacing,
                          AppTextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.done,
                            label: "Password",
                            obscureText: controller.visibility,
                            validator: (value) =>
                                context.validatePassword(value),
                            controller: passwordController,
                            hintText: "Password",
                            suffixIcon: IconButton(
                              icon: controller.visibility
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                              onPressed: () => controller.onVisibilityChange(),
                            ),
                          ),
                          kLargeVerticalSpacing,
                          Row(
                            children: [
                              Expanded(
                                child: AppButton(
                                  color: kPrimaryColor,
                                  label: "SIGN IN",
                                  isLoading: controller.state.isLoading,
                                  onPressed: () async {
                                    Get.focusScope?.unfocus();
                                    if (_formKey.currentState!.validate()) {
                                      await controller.login(
                                          emailController.text.trim(),
                                          passwordController.text);
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account?  "),
                                InkWell(
                                  onTap: () => Navigator.of(context).pushNamed(
                                      ServiceProviderRoutes.spSignUpRoute),
                                  child: Text(
                                    "Sign Up",
                                    style: bodyNormalText(context)
                                        .copyWith(color: kPrimaryColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () => Get.offAllNamed(
                                      ServiceProviderRoutes.spDashboardRoute),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 18),
                                    decoration: BoxDecoration(
                                        color: kWhiteColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFFEEEEEE),
                                            spreadRadius: 10,
                                            blurRadius: 10,
                                          ),
                                        ]),
                                    child: Center(
                                        child: Text("Sign in with google")),
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
                              InkWell(
                                onTap: () => Navigator.of(context).pushNamed(
                                    CustomerRoutes.customerLoginRoute),
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
              }),
        ),
      ),
    );
  }
}
