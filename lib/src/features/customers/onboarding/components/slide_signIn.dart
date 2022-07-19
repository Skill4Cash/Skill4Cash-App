import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/routes/route_manager.dart';
import '../../../widgets/app_button.dart';

class BuildSlideWithSignIn extends StatefulWidget {
  const BuildSlideWithSignIn({
    Key? key,
  }) : super(key: key);

  @override
  _BuildSlideWithSignInState createState() => _BuildSlideWithSignInState();
}

class _BuildSlideWithSignInState extends State<BuildSlideWithSignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: kPad + 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              kExtraLargeVerticalSpacing,
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/slide_6.png"),
                      fit: BoxFit.contain),
                ),
              ),
              kMediumVerticalSpacing,
              Container(
                  padding: EdgeInsets.symmetric(horizontal: kPad),
                  child: Text(
                    "Welcome to Skill4Cash",
                    style: bodySmallText(context).copyWith(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  )),
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: kPad),
                      decoration: BoxDecoration(
                          border: Border.all(color: kPrimaryColor),
                          borderRadius: BorderRadius.circular(8)),
                      child: FlatButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamedAndRemoveUntil(
                                CustomerRoutes.customerLoginRoute,
                                (route) => false),
                        child: Text("sign in".toUpperCase(),
                            style: labelText(context).copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: kPad,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: kPad),
                      child: AppButton(
                        label: "sign up".toUpperCase(),
                        color: kPrimaryColor,
                        // size: 12,
                        onPressed: () => Navigator.of(context)
                            .pushNamedAndRemoveUntil(
                                CustomerRoutes.customerSignUpRoute,
                                (route) => false),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
