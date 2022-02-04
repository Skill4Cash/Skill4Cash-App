import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildTile extends StatelessWidget {
  final IconData? leftIcon;
  final String? textDesc;
  final String? subText;
  final IconData? rightIcon;
  final IconData? secondleftIcon;
  final String? secondtextDesc;
  final String? secondsubText;
  final IconData? secondrightIcon;
  final String? routeOne;
  final String? routeTwo;
  const BuildTile({
    Key? key,
    this.leftIcon,
    this.textDesc,
    this.subText,
    this.rightIcon,
    this.secondleftIcon,
    this.secondtextDesc,
    this.secondsubText,
    this.secondrightIcon,  this.routeOne,  this.routeTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.all(kPad + 5),
        decoration: BoxDecoration(
            color: kWhiteColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                  offset: Offset(1.0, 1.0))
            ],
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, routeOne!),
              child: Row(
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
                        style: bodySmallText(context),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        subText!,
                        style: bodySmallText(context)
                            .copyWith(color: kInactiveColor),
                      ),
                      kSmallHorizontalSpacing,
                      Icon(rightIcon, size: 14, color: kInactiveColor),
                    ],
                  )
                ],
              ),
            ),
            kTinyVerticalSpacing,
            Container(
                margin: EdgeInsets.only(left: kPad + 10),
                child: Divider(
                  height: kPad,
                )),
            kTinyVerticalSpacing,
            InkWell(
              onTap: () => Navigator.pushNamed(context, routeTwo!),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        secondleftIcon,
                        color: kPrimaryColor,
                        size: 18,
                      ),
                      kSmallHorizontalSpacing,
                      Text(
                        secondtextDesc!,
                        style: bodySmallText(context),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        secondsubText!,
                        style: bodySmallText(context)
                            .copyWith(color: kInactiveColor),
                      ),
                      kSmallHorizontalSpacing,
                      Icon(secondrightIcon, size: 14, color: kInactiveColor),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
