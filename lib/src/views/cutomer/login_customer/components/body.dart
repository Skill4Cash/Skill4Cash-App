import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:flutter/material.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontFamily: 'Gilory-ExtraBold'),
          ),
          TextFieldContainer(
              child: TextField(
            decoration: InputDecoration(
              hintText: "Email",
              border: InputBorder.none,
            ),
          )),
          RoundedInputField(
            hintText: "Email",
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final ValueChanged<String>? onChanged;

  const RoundedInputField({Key? key, this.hintText, this.onChanged, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
      ),
    ));
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget? child;
  const TextFieldContainer({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
