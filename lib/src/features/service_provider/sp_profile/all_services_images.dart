
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';

class AllServiceImagesScreen extends StatelessWidget {
  const AllServiceImagesScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: kBlackColor,
          ),
        ),
        title: Text(
          "All Images",
          style: heading2(context),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kSmallVerticalSpacing,
              Text(
                """

                  """,
                style: bodyNormalText(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
