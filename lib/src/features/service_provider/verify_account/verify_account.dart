import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../../../core/utilities/app_textstyle.dart';
import '../../widgets/app_button.dart';

class VerifyAccountScreenSP extends StatelessWidget {
  const VerifyAccountScreenSP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 100,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: kTextColor,
            size: 18,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text("Verify your account",
            style: heading2(context).copyWith(
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Upload your National ID",
                      style: bodyNormalText(context).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "(NIN, Voters Card, Driver’s License, International passport)",
                      style: bodySmallText(context).copyWith(
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    kMediumVerticalSpacing,
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Front",
                              style: bodyNormalText(context).copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            kSmallVerticalSpacing,
                            buildUpload(context),
                          ],
                        ),
                        kSmallHorizontalSpacing,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Back",
                              style: bodyNormalText(context).copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            kSmallVerticalSpacing,
                            buildUpload(context),
                          ],
                        ),
                      ],
                    ),
                    kLargeVerticalSpacing,
                    Text(
                      "Proof of Business",
                      style: bodyNormalText(context).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "(Business name or Incorporation or Artisan association certificate)",
                      style: bodySmallText(context).copyWith(
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    kMediumVerticalSpacing,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Front",
                          style: bodyNormalText(context).copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        kSmallVerticalSpacing,
                        buildUpload(context),
                      ],
                    ),
                    // Spacer(),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: AppButton(
                  color: kPrimaryColor,
                  label: "Next",
                  onPressed: () => Navigator.of(context)
                      .pushNamed(ServiceProviderRoutes.serviceInfoRoute),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildUpload(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.6,
      height: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFEEEEEE),
              spreadRadius: 6,
              blurRadius: 10,
            ),
          ]),
      child: Transform.rotate(
          angle: 262.3,
          child: Icon(
            Icons.logout,
            color: Colors.grey,
          )),
    );
  }
}
