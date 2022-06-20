import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/features/service_provider/schedule/create_schedule.dart';
import 'package:flutter/material.dart';

class PickDate extends StatelessWidget {
  PickDate({Key? key}) : super(key: key);
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Card(
          elevation: 10,
          margin: EdgeInsets.symmetric(
              vertical: size.height * 0.08, horizontal: size.width * 0.08),
          child: CalendarDatePicker(
            firstDate: DateTime.now(),
            initialDate: DateTime.now(),
            lastDate: DateTime(2030),
            onDateChanged: (DateTime) {
              date = DateTime;
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return CreateSchedule(DateTime);
              }));
            },
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
