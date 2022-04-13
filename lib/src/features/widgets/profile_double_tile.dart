import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:flutter/material.dart';

class ProfileDoubleTile extends StatelessWidget {
  final String? text1;
  final String? text2;
  final IconData? icon;
  final IconData? icon2;
  final Icon? suffixicon;
  final VoidCallback? onTap1;
  final VoidCallback? onTap2;
  final String? desc1;
  final String? desc2;
  const ProfileDoubleTile(
      {Key? key,
      this.text1,
      this.text2,
      this.icon,
      this.icon2,
      this.onTap1,
      this.onTap2,
      this.suffixicon,
      this.desc1,
      this.desc2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFFEEEEEE),
            spreadRadius: 6,
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xf0F3D59)),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          kExtraSmallHorizontalSpacing,
          GestureDetector(
            onTap: onTap1,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 16, left: 8, bottom: 16, right: 8),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: kPrimaryColor,
                    // size: 16,
                  ),
                  kExtraSmallHorizontalSpacing,
                  Container(
                    width: MediaQuery.of(context).size.width * 0.333,
                    child: Text(text1!, style: bodyNormalText(context)),
                  ),
                  Text(
                    desc1!,
                    style: bodyNormalText(context)
                        .copyWith(fontWeight: FontWeight.w200),
                  ),
                  Spacer(),
                  suffixicon!
                ],
              ),
            ),
          ),
          Divider(),
          kExtraSmallVerticalSpacing,
          GestureDetector(
            onTap: onTap2,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 0, left: 8, bottom: 8, right: 8),
              child: Row(
                children: [
                  Icon(icon2, color: kPrimaryColor),
                  kExtraSmallHorizontalSpacing,
                  Container(
                    width: MediaQuery.of(context).size.width * 0.333,
                    child: Text(text2!, style: bodyNormalText(context)),
                  ),
                  Text(
                    desc2!,
                    style: bodyNormalText(context)
                        .copyWith(fontWeight: FontWeight.w200),
                  ),
                  Spacer(),
                  suffixicon!
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
