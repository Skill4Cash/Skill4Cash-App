import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/views/service_provider/settings/edit_email.dart';
import 'package:Skill4Cash/src/views/service_provider/settings/edit_phone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/build_tile.dart';
import 'components/single_tile.dart';
import 'components/tile_header.dart';

class ServiceProviderSettingScreen extends StatelessWidget {
  const ServiceProviderSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: ProfileContent(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      leading: Icon(
        Icons.arrow_back_ios,
        color: kTextColor,
        size: 16,
      ),
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
            leftIcon: Icons.phone,
            textDesc: "Service Information",
            subText: "",
            rightIcon: Icons.arrow_forward_ios,
            secondleftIcon: Icons.message,
            secondtextDesc: "S4C subscripiton plan",
            secondsubText: "Active",
            secondrightIcon: Icons.arrow_forward_ios,
          ),
          kLargeVerticalSpacing,
          TileHeader(
            text: "Profile Settings",
          ),
          kSmallVerticalSpacing,
          BuildTile(
            leftIcon: Icons.phone,
            textDesc: "Phone Number",
            subText: "+234 812 345 6789",
            routeOne: EditPhoneNumber(),
            routeTwo: EditEmail(),
            rightIcon: Icons.arrow_forward_ios,
            secondleftIcon: Icons.message,
            secondtextDesc: "Email",
            secondsubText: "sammy@email.co",
            secondrightIcon: Icons.arrow_forward_ios,
          ),
          kLargeVerticalSpacing,
          SingleTile(
            leftIcon: Icons.history,
            textDesc: "S4C Guidelines",
            rightIcon: Icons.arrow_forward_ios,
          ),
          kLargeVerticalSpacing,
          BuildTile(
            leftIcon: Icons.phone,
            textDesc: "Privacy policy",
            subText: "",
            rightIcon: Icons.arrow_forward_ios,
            secondleftIcon: Icons.message,
            secondtextDesc: "Terms and conditions",
            secondsubText: "",
            secondrightIcon: Icons.arrow_forward_ios,
          ),
          kLargeVerticalSpacing,
          SingleTile(
            leftIcon: Icons.history,
            textDesc: "Logout",
            rightIcon: Icons.arrow_forward_ios,
          ),
          kLargeVerticalSpacing,
        ],
      ),
    );
  }
}
