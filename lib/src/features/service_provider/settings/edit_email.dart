import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/features/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EditEmailSp extends StatelessWidget {
  
  const EditEmailSp({ Key? key }) : super(key: key);

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
                title: "Change Email Address",
                hintText: "Enter email address",
              ),
              Spacer(),
              Container(
                width: double.infinity,
                child: AppButton(
                  label: "apply".toUpperCase(),
                  color: kPrimaryColor,
                  size: 12,
                  onPressed: () {},
                ),
              ),
              kLargeVerticalSpacing,
            ],
          ),
        )
    );
  }





    AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      leading: InkWell(
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
      title: Text("Change Email Address",
          style: bodyNormalText(context)
              .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
      centerTitle: true,
    );
  }
}
