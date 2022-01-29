import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/views/widgets/app_button.dart';
import 'package:Skill4Cash/src/views/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

import 'verify_account.dart';

class EditPhoneNumber extends StatelessWidget {
  const EditPhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPad),
          child: Column(
            children: [
              kExtraLargeVerticalSpacing,
              AppTextField(
                hintText: "Enter phone number",
                title: "Change Number or another copy",
              ),
              Spacer(),
              Container(
                width: double.infinity,
                child: AppButton(
                  label: "apply".toUpperCase(),
                  color: kPrimaryColor,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => VerifyAccount()));
                  },
                ),
              ),
              kLargeVerticalSpacing,
            ],
          ),
        ));
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      leading:InkWell(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: kTextColor,
          size: 16,
        ),
      ),
      backgroundColor: Colors.white,
      title: Text("Change phone number",
          style: bodyNormalText(context)
              .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
      centerTitle: true,
    );
  }
}
