import 'dart:ui';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

class BuildSlideWithForm extends StatefulWidget {
  const BuildSlideWithForm({ Key ? key,}) : super(key: key);

  @override
  _BuildSlideWithFormState createState() => _BuildSlideWithFormState();
}

class _BuildSlideWithFormState extends State<BuildSlideWithForm> {
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
                      image: AssetImage("assets/images/slide_5.png"),
                      fit: BoxFit.contain
                    ),
                  ),
                ),
                kMediumVerticalSpacing,
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your location",
                    hintStyle: labelText(context),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kTextColor,
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kTextColor,
                      )
                    )
                  ),
                ),
                kMediumVerticalSpacing,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: kPad),
                  child: Text(
                    "Please enter your location",
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