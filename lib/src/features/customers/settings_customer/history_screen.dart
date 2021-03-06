import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
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
          "History",
          style: heading2(context),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kSmallVerticalSpacing,
            Text(
              "Clear history data...",
              style: bodyNormalText(context).copyWith(
                color: kPrimaryColor,
              ),
            ),
            kSmallVerticalSpacing,
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yesterday - Nov 3, 2021",
                      style: bodyNormalText(context),
                    ),
                    Text(
                      "Wonderous Creations Clothiers",
                      style: bodyNormalText(context).copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    kExtraSmallVerticalSpacing,
                    Text(
                      "Fashion",
                      style: bodyTinyText(context).copyWith(
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    kSmallVerticalSpacing,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
