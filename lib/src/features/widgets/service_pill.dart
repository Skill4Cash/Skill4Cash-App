import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:flutter/material.dart';

class ServicePill extends StatelessWidget {
  final String title;
  final IconData icon;
  const ServicePill({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: kWhiteColor,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFEEEEEE),
                  spreadRadius: 6,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Icon(
              icon,
              color: kPrimaryColor,
            )),
        kSmallVerticalSpacing,
        Center(
            child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        )),
      ],
    );
  }
}
