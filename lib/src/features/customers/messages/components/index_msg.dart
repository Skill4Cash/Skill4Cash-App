import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

class MessageIndex extends StatelessWidget {
  final String dp;
  final String name;
  final String message;
  final String time;
  const MessageIndex(
      {Key? key,
      required this.dp,
      required this.name,
      required this.message,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, CustomerRoutes.chatRoute);
      },
      child: ListTile(
        leading: Stack(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/sp_1.jpg"),
                radius: 25,
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
        title: Text(
          name,
          style: bodyNormalText(context).copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(message,
            style: bodySmallText(context).copyWith(color: kInactiveColor),
            overflow: TextOverflow.ellipsis),
        trailing: Text(
          "08.12",
          style: bodySmallText(context).copyWith(color: kInactiveColor),
        ),
      ),
    );
  }
}
