import 'dart:ui';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

class BuildSlideWithSignIn extends StatefulWidget {
  const BuildSlideWithSignIn({ Key ? key,}) : super(key: key);

  @override
  _BuildSlideWithSignInState createState() => _BuildSlideWithSignInState();
}

class _BuildSlideWithSignInState extends State<BuildSlideWithSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kPad + 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kExtraLargeVerticalSpacing,
                Container(
                  height: MediaQuery.of(context).size.height*0.45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/slide_6.png"),
                      fit: BoxFit.contain
                    ),
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
                  )
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}