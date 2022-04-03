import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/features/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'change_email_address_screen.dart';
import 'change_phone_number_screen.dart';
import 'hisory_screen.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        automaticallyImplyLeading: false,
        title: Text(
          "Settings",
          style: heading1(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            kMediumVerticalSpacing,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text("Sammy David",
                    style: bodyNormalText(context)
                        .copyWith(fontWeight: FontWeight.w600)),
              ],
            ),
            kLargeVerticalSpacing,
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 24),
                    child: Text('Profile Settings', style: heading2(context)),
                  ),
                  ProfileDoubleTile(
                    desc1: "+234 812 345 6789",
                    desc2: "sammy@email.co",
                    text1: "Phone number",
                    text2: "Email",
                    icon: Icons.phone_android,
                    icon2: Icons.email_outlined,
                    suffixicon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                    onTap1: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ChangePhoneNumber(),
                      ),
                    ),
                    onTap2: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ChangeEmailAddress(),
                      ),
                    ),
                  ),
                  kExtraSmallVerticalSpacing,
                  ProfileSingleTile(
                    text: "History",
                    icon: Icons.history,
                    suffixicon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                    desc: "",
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HistoryScreen()),
                    ),
                  ),
                  kExtraSmallVerticalSpacing,
                  ProfileDoubleTile(
                    desc1: "",
                    desc2: "",
                    text1: "Privacy policy",
                    text2: "Terms and conditions",
                    icon: Icons.privacy_tip,
                    icon2: Icons.info_outline,
                    suffixicon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                    onTap1: () => Navigator.of(context)
                        .pushNamed(CustomerRoutes.privacyPolicyRoute),
                    onTap2: () => Navigator.of(context)
                        .pushNamed(CustomerRoutes.termsAndConditionRoute),
                  ),
                  kExtraSmallVerticalSpacing,
                  ProfileSingleTile(
                    text: "Logout",
                    icon: Icons.logout,
                    suffixicon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                    desc: "",
                    onTap: () {},
                  ),
                  kExtraLargeVerticalSpacing,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
