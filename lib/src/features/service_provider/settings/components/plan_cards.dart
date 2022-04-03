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
    Key? key,
    required this.planName,
    required this.planAmount,
    required this.planDesc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
              offset: Offset(1.0, 1.0))
        ],
      ),
      // height: 30,
      // width: 30,
      // padding: EdgeInsets.symmetric(
      //     vertical: kPad * 3, horizontal: kPad * 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(SvgAssets.planLogo),
          kLargeVerticalSpacing,
          kLargeVerticalSpacing,
          Text(
            planName,
            style: bodyNormalText(context),
          ),
          kSmallVerticalSpacing,
          Text(
            "#$planAmount.00",
            style: bodyNormalText(context)
                .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          kSmallVerticalSpacing,
          Text(
            planDesc,
            style: bodyNormalText(context)
                .copyWith(fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
