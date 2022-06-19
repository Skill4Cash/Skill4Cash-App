import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/base_change_notifier.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/core/utilities/validation_mixin.dart';
import 'package:Skill4Cash/src/features/customerAuth/controller/verify_account_controller.dart';
import 'package:Skill4Cash/src/features/widgets/app_backgrond.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_textfield.dart';

class VerifyAccount extends StatelessWidget {
  VerifyAccount({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Expanded(
          child: GetBuilder<VerifyAccountController>(
              init: VerifyAccountController(),
              builder: (controller) {
                return Form(
                  key: _formKey,
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
                            "Please enter the verification code we sent to your provided phone number",
                            style: bodyNormalText(context),
                          ),
                          kMediumVerticalSpacing,
                          AppTextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            label: "Enter OTP",
                            maxlength: 4,
                            controller: otpController,
                            validator: (value) =>
                                context.validateFieldNotEmpty(value),
                            hintText: "Email",
                          ),
                          kLargeVerticalSpacing,
                          Row(
                            children: [
                              Expanded(
                                child: AppButton(
                                  color: kPrimaryColor,
                                  label: "VERIFY",
                                  isLoading: controller.state.isLoading,
                                  onPressed: () async {
                                    Get.focusScope!.unfocus();
                                    if (_formKey.currentState!.validate()) {
                                      await controller.verifyCustomer(
                                          code: otpController.text.trim());
                                    }
                                    // Navigator.pushNamed(
                                    //     context, CustomerRoutes.openEmail);
                                  },
                                ),
                              ),
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
