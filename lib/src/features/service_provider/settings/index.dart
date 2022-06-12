import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/features/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/build_tile.dart';
import 'components/single_tile.dart';
import 'components/tile_header.dart';

class SettingScreenSp extends StatelessWidget {
  const SettingScreenSp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: ProfileContent(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      // leading: Icon(
      //   Icons.arrow_back_ios,
      //   color: kTextColor,
      //   size: 16,
      // ),
      backgroundColor: Colors.white,
      title: Text("Settings",
          style: bodyNormalText(context)
              .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
      centerTitle: true,
    );
  }
}

class ProfileContent extends StatelessWidget {
  const ProfileContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kLargeVerticalSpacing,
          Column(
            children: [
              Center(
                child: Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/sp_1.jpg"),
                        radius: 50,
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.camera_enhance,
                              size: 14,
                              color: kWhiteColor,
                            ),
                          ))
                    ]),
              ),
              kSmallVerticalSpacing,
              Text(
                "Tailor Swift services",
                style: bodyNormalText(context).copyWith(fontSize: 16),
              )
            ],
          ),
          kLargeVerticalSpacing,
          TileHeader(
            text: "Skill4Cash Settings",
          ),
          kSmallVerticalSpacing,
          BuildTile(
            leftIcon: Icons.line_style_outlined,
            textDesc: "Service Information",
            subText: "",
            rightIcon: Icons.arrow_forward_ios,
            routeOne: ServiceProviderRoutes.serviceInfoRoute,
            routeTwo: ServiceProviderRoutes.s4cSubRoute,
            secondleftIcon: Icons.message,
            secondtextDesc: "S4C subscription plan",
            secondsubText: "Active",
            secondrightIcon: Icons.arrow_forward_ios,
          ),
          kLargeVerticalSpacing,
          TileHeader(
            text: "Profile Settings",
          ),
          kSmallVerticalSpacing,
          BuildTile(
            leftIcon: Icons.phone_android,
            textDesc: "Phone Number",
            subText: "+234 812 345 6789",
            routeOne: ServiceProviderRoutes.editPhoneRoute,
            routeTwo: ServiceProviderRoutes.editEmailRoute,
            rightIcon: Icons.arrow_forward_ios,
            secondleftIcon: Icons.email_outlined,
            secondtextDesc: "Email",
            secondsubText: "sammy@email.co",
            secondrightIcon: Icons.arrow_forward_ios,
          ),
          kLargeVerticalSpacing,
          SingleTile(
            leftIcon: Icons.list_outlined,
            textDesc: "S4C Guidelines and Legal Agreement",
            rightIcon: Icons.arrow_forward_ios,
            onPressed: () => Navigator.of(context).pushNamed(
              (ServiceProviderRoutes.spGuidelinesRoute),
            ),
          ),

          kLargeVerticalSpacing,
          BuildTile(
            leftIcon: Icons.privacy_tip,
            textDesc: "Privacy policy",
            subText: "",
            routeOne: CustomerRoutes.privacyPolicyRoute,
            routeTwo: CustomerRoutes.termsAndConditionRoute,
            rightIcon: Icons.arrow_forward_ios,
            secondleftIcon: Icons.info_outline,
            secondtextDesc: "Terms and conditions",
            secondsubText: "",
            secondrightIcon: Icons.arrow_forward_ios,
          ),
          ProfileSingleTile(
            text: "Logout",
            icon: Icon(
              Icons.logout,
              // size: 16,
              color: Colors.red,
            ),
            suffixicon: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.red,
            ),
            desc: "",
            onTap: () => Navigator.of(context)
                .pushNamed(ServiceProviderRoutes.spLoginRoute),
          ),
          kLargeVerticalSpacing,
        ],
      ),
    );
  }
}
