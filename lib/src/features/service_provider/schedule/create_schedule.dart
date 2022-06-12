import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateSchedule extends StatelessWidget {
  final DateTime date;
  CreateSchedule(this.date);

  var _noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      '${DateFormat("yMMMMEEEEd").format(date)}',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                kMediumVerticalSpacing,
                Text(
                  'Note',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                kMediumVerticalSpacing,
                Container(
                  padding: EdgeInsets.all(5),
                  color: Color.fromRGBO(153, 153, 153, 1),
                  child: TextField(
                    maxLines: 2,
                    style: TextStyle(color: Colors.white),
                    controller: _noteController,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                kMediumVerticalSpacing,
                kMediumVerticalSpacing,
                Text('Time'),
                kLargeVerticalSpacing,
                kLargeVerticalSpacing,
                kLargeVerticalSpacing,
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, ServiceProviderRoutes.spScheduleRoute);
                    },
                    child: Container(
                      width: size.width * 0.5,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      // padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Center(
                        child: Text('SUBMIT'),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      leading: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: kTextColor,
          size: 16,
        ),
      ),
      backgroundColor: Colors.white,
      title: Text("Schedules",
          style: bodyNormalText(context)
              .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
      centerTitle: true,
    );
  }
}
