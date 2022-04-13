import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:flutter/material.dart';

class ProfileSingleTile extends StatelessWidget {
  final String? text;

  final Icon? icon;
  final Color? textColor;
  final Icon? suffixicon;
  final VoidCallback? onTap;

  final String? desc;

  const ProfileSingleTile({
    Key? key,
    this.text,
    this.icon,
    this.onTap,
    this.suffixicon,
    this.desc,
    this.textColor,
  }) : super(key: key);

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
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  icon!,
                  kExtraSmallHorizontalSpacing,
                  Container(
                    width: MediaQuery.of(context).size.width * 0.333,
                    child: Text(
                      text!,
                      style: bodyNormalText(context)
                          .copyWith(color: textColor ?? null),
                    ),
                  ),
                  Text(desc!),
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
