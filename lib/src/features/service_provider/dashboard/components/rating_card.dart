import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilities/app_textstyle.dart';

class BuildRating extends StatelessWidget {
  final String image;
  final String name;
  final String comment;
  final Color shadowColor;
  const BuildRating({
    Key? key, required this.image, required this.name, required this.comment, required this.shadowColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
                color: shadowColor,
                blurRadius: 20.0,
                offset: Offset(1.0, 1.0))
          ],
          borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(image),
                    maxRadius: 20,
                  ),
                  kSmallHorizontalSpacing,
                  Expanded(child: Text(name, style: bodyNormalText(context),),
                ),
                Row(
                  children: [
                    Icon(Icons.star, size: 14, color: kPrimaryColor),
                    Icon(Icons.star, size: 14, color: kPrimaryColor),
                    Icon(Icons.star, size: 14, color: kPrimaryColor),
                    Icon(Icons.star, size: 14, color: kPrimaryColor),
                    Icon(Icons.star, size: 14, color: kPrimaryColor),
                  ],
                )
                ],
              ),
              kSmallVerticalSpacing,
              Text(comment, style: bodySmallText(context),)
            ],
          )
    );
  }
}