import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

class SingleTile extends StatelessWidget {
  final IconData? leftIcon;
  final String? textDesc;
  final IconData? rightIcon;
  final VoidCallback? onPressed;
  const SingleTile({
    Key? key,
    this.leftIcon,
    this.textDesc,
    this.rightIcon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPad),
        child: GestureDetector(
          onTap: onPressed,
          child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20.0,
                        offset: Offset(1.0, 1.0))
                  ],
                  borderRadius: BorderRadius.circular(8)),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          leftIcon,
                          color: kPrimaryColor,
                          size: 18,
                        ),
                        kSmallHorizontalSpacing,
                        Text(
                          textDesc!,
                          style: bodyNormalText(context),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(rightIcon, size: 16, color: kInactiveColor),
                      ],
                    )
                  ],
                ),
              ])),
        ));
  }
}
