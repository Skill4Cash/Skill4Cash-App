import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

class BuildSlides extends StatefulWidget {
  final String? image;
  final String? desc;
  const BuildSlides({Key? key, this.image, this.desc}) : super(key: key);

  @override
  _BuildSlidesState createState() => _BuildSlidesState();
}

class _BuildSlidesState extends State<BuildSlides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/${widget.image}"),
                    fit: BoxFit.contain),
              ),
            ),
            kExtraLargeVerticalSpacing,
            Container(
                padding: EdgeInsets.symmetric(horizontal: kPad),
                child: Text(
                  "${widget.desc}",
                  style: bodySmallText(context).copyWith(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    ));
  }
}
