import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/base_change_notifier.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/core/utilities/validation_mixin.dart';
import 'package:Skill4Cash/src/features/serviceProviderAuth/controller/service_signup_controller.dart';
import 'package:Skill4Cash/src/features/widgets/app_backgrond.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:nigerian_states_and_lga/nigerian_states_and_lga.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_textfield.dart';

class ServiceSignUp extends StatelessWidget {
  ServiceSignUp({Key? key}) : super(key: key);
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final businessNameController = TextEditingController();

  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: AppBackground(
          child: Expanded(
            child: GetBuilder<ServiceSignupController>(
                init: ServiceSignupController(),
                builder: (controller) {
                  return Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Welcome",
                                style: heading1(context)
                                    .copyWith(fontFamily: "Roboto"),
                              ),
                              kMediumVerticalSpacing,
                              Text(
                                "Sign up",
                                style: heading2(context),
                              ),
                              Text(
                                "Signup as a service provider",
                                style: bodyNormalText(context),
                              ),
                              kMediumVerticalSpacing,
                              AppTextField(
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                                label: "First name",
                                controller: firstNameController,
                                validator: (value) =>
                                    context.validateFieldNotEmpty(value),
                                hintText: "First name",
                              ),
                              kSmallVerticalSpacing,
                              AppTextField(
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                                label: "Last name",
                                controller: lastNameController,
                                validator: (value) =>
                                    context.validateFieldNotEmpty(value),
                                hintText: "Last name",
                              ),
                              kSmallVerticalSpacing,
                              // DropdownButton<String>(
                              //     key: const ValueKey('States'),
                              //     value: stateValue,
                              //     isExpanded: true,
                              //     hint: const Text('Select a Nigerian state'),
                              //     items: NigerianStatesAndLGA.allStates
                              //         .map<DropdownMenuItem<String>>((String value) {
                              //           return DropdownMenuItem<String>(
                              //             child: Text(value),
                              //             value: value,
                              //           );
                              //         }).toList(),
                              // kSmallVerticalSpacing,
                              // DropdownButton<String>(
                              //   key: const ValueKey('Local governments'),
                              //   value: lgaValue,
                              //   isExpanded: true,
                              //   hint: const Text('Select a Lga'),
                              //   items:
                              //     statesLga.map<DropdownMenuItem<String>>((String value) {
                              //    return DropdownMenuItem<String>(
                              //        child: Text(value),
                              //        value: value,
                              //    );
                              // }).toList()
                              kSmallVerticalSpacing,
                              AppTextField(
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                                validator: (value) =>
                                    context.validateFieldNotEmpty(value),
                                controller: businessNameController,
                                label: "Business Name",
                                hintText: "Business Name",
                              ),
                              kSmallVerticalSpacing,
                              AppTextField(
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                label: "Email",
                                controller: emailController,
                                validator: (value) =>
                                    context.validateEmailAddress(value),
                                hintText: "Email",
                              ),
                              kSmallVerticalSpacing,
                              AppTextField(
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                                validator: (value) =>
                                    context.validatePhoneNumber(value),
                                controller: phoneController,
                                label: "Phone number",
                                hintText: "Phone number",
                              ),
                              kSmallVerticalSpacing,
                              AppTextField(
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                label: "Password",
                                controller: passwordController,
                                validator: (value) =>
                                    context.validatePassword(value),
                                hintText: "Password",
                                obscureText: controller.visibility,
                                suffixIcon: IconButton(
                                  icon: controller.visibility
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                  onPressed: () =>
                                      controller.onVisibilityChange(),
                                ),
                              ),
                              kMediumVerticalSpacing,
                              AppTextField(
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                label: "Confirm password",
                                controller: confirmPasswordController,
                                validator: (value) =>
                                    context.validateConfirmPassword(
                                        value!, passwordController.text),
                                hintText: "Confirm password",
                                obscureText: controller.visibility,
                                suffixIcon: IconButton(
                                  icon: controller.visibility
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                  onPressed: () =>
                                      controller.onVisibilityChange(),
                                ),
                              ),
                              kLargeVerticalSpacing,
                              Row(
                                children: [
                                  Expanded(
                                    child: AppButton(
                                      color: kPrimaryColor,
                                      label: "SIGN UP",
                                      isLoading: controller.state.isLoading,
                                      onPressed: () async {
                                        Get.focusScope!.unfocus();
                                        if (_formKey.currentState!.validate()) {
                                          await controller
                                              .signupServiceProvider(
                                            firstName:
                                                firstNameController.text.trim(),
                                            lastName:
                                                lastNameController.text.trim(),
                                            email: emailController.text.trim(),
                                            phoneNumber:
                                                phoneController.text.trim(),
                                            password: passwordController.text,
                                            confirmPassword:
                                                confirmPasswordController.text,
                                            businessName:
                                                businessNameController.text,
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              kSmallVerticalSpacing,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Already have an account?  "),
                                  InkWell(
                                    onTap: () => Navigator.of(context)
                                        .pushNamed(
                                            ServiceProviderRoutes.spLoginRoute),
                                    child: Text(
                                      "Sign in",
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
                                  ]),
                              kSmallVerticalSpacing,
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text("Tap here to switch to")),
                                    Spacer(),
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () => Navigator.of(context)
                                            .pushNamed(CustomerRoutes.customerSignUpRoute),
                                        child: Text(
                                          "Customer Sign Up",
                                          style: bodyNormalText(context)
                                              .copyWith(color: kPrimaryColor),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ]),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
