import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/features/customers/onboarding/components/slide_signIn.dart';
import 'package:Skill4Cash/src/features/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:nigerian_states_and_lga/nigerian_states_and_lga.dart';

class BuildSlideWithForm extends StatefulWidget {
  BuildSlideWithForm({
    Key? key,
  }) : super(key: key);

  @override
  _BuildSlideWithFormState createState() => _BuildSlideWithFormState();
}

class _BuildSlideWithFormState extends State<BuildSlideWithForm> {
  // @override
  String stateValue = NigerianStatesAndLGA.allStates[0];
  final _storage = FlutterSecureStorage();

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
                    height: MediaQuery.of(context).size.height * 0.45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/slide_5.png"),
                          fit: BoxFit.contain),
                    ),
                  ),
                  kMediumVerticalSpacing,
                  DropdownButton<String>(
                    key: const ValueKey('States'),
                    value: stateValue,
                    onChanged: (val) {
                      setState(() {
                        stateValue = val!;
                      });
                    },
                    isExpanded: true,
                    hint: const Text('Select a Nigerian state'),
                    items: NigerianStatesAndLGA.allStates
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
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
                      )),
                  kMediumVerticalSpacing,
                  AppButton(
                    label: "Next",
                    onPressed: () async{
                      print(stateValue);
                      if (stateValue.isNotEmpty) {
                       await _storage.write(key: "location", value: stateValue);
                        Get.offAll(() => BuildSlideWithSignIn());
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
