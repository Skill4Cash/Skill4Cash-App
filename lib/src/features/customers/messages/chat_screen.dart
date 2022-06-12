import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../../../core/routes/route_manager.dart';
import 'components/body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Body(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      automaticallyImplyLeading: true,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(
          Icons.arrow_back_ios,
          color: kTextColor,
          size: 18,
        ),
      ),
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Stack(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                GestureDetector(
                  onTap: () =>
                      Navigator.of(context).pushNamed(CustomerRoutes.spViewRoute),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/sp_1.jpg"),
                    radius: 25,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: kWhiteColor, width: 1.0)),
                    )),
              ]),
          kTinyVerticalSpacing,
          Text("Wonderous Creations Clothiers",
              style: bodyNormalText(context)
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
        ],
      ),
      centerTitle: true,
    );
  }
}
