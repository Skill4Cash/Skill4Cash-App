import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utilities/constants.dart';
import '../../../../core/utilities/images.dart';

class BuildCards extends StatelessWidget {
  final String planName;
  final String planAmount;
  final String planDesc;
  const BuildCards({
    Key? key, required this.planName, required this.planAmount, required this.planDesc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black12,
      child: Container(
        height: 300,
        width: 300,
        // padding: EdgeInsets.symmetric(
        //     vertical: kPad * 3, horizontal: kPad * 3),
        child: Column(
          children: [
            SvgPicture.asset(SvgAssets.planLogo),
            kLargeVerticalSpacing,
            kLargeVerticalSpacing,
            Text(
              planName,
              style: bodySmallText(context),
            ),
            kTinyVerticalSpacing,
            Text(
              "#$planAmount",
              style: bodyNormalText(context)
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            kSmallVerticalSpacing,
            Text(
              planDesc,
              style: bodySmallText(context),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
