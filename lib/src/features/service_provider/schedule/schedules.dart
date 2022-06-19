import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Column(
            children: [
              Container(
                height: size.height * 0.1,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Image005.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '12',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Upcoming Schedules',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: CalendarDatePicker(
                  firstDate: DateTime.now(),
                  initialDate: DateTime.now(),
                  lastDate: DateTime(2030),
                  onDateChanged: (DateTime) {},
                ),
              ),
              Container(
                  height: size.height * 0.2,
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: EdgeInsets.only(left: 5, top: 10),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: 50,
                          child: Column(
                            children: [
                              Text(
                                DateFormat('EEE')
                                    .format(DateTime.now())
                                    .toString()
                                    .toUpperCase(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                DateTime.now().day.toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          left: 40,
                          right: 20,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            height: size.height * 0.5,
                            // width: 500,
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                for (var i = 0; i < 6; i++)
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: ListTile(
                                      onTap: () =>
                                          _showScheduleDetails(context),
                                      contentPadding: EdgeInsets.only(left: 10),
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 0.5, color: kPrimaryColor),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      tileColor: kPrimaryColor,
                                      title: Text(
                                        'Remeber to meet with Samdroid',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      subtitle: Text(
                                        'Remeber to meet with Samdroid',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void _showScheduleDetails(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      )),
      builder: (ctx) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Schedule Details',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kTinyVerticalSpacing,
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: kPrimaryColor,
                  ),
                ),
                title: Text('Measurement appointment ad Agungi'),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.person),
                title: Text('Sammy Droid'),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(
                  Icons.access_time_sharp,
                ),
                title: Text('Tues, Nov 27'),
                subtitle: Text('14:00 - 17:00'),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.article_outlined),
                title: Text(
                    'We can meet at the Massive Chicken outlet close to Square Mall'),
              ),
            ],
          ),
        );
      },
    );
    // builder should return the widget that would be in the modal sheet
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
