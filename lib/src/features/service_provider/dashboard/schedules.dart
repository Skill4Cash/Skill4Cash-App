import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../core/utilities/app_textstyle.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  DateTime? _selectedDay;
  DateTime? _focusedDay;
  // CalendarFormat _calendarFormat = ]alendarFormat();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            kMediumVerticalSpacing,
            InkWell(
              onTap: () => showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    context: context,
                    builder: (context) => Container(
                      height: size.height*0.9,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text("Schedule details", style: bodyNormalText(context).copyWith(fontWeight: FontWeight.bold, fontSize: 18)),
                            kLargeVerticalSpacing,
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                kSmallHorizontalSpacing,
                                Expanded(child: Text("Measurement appointment at agungi", style: bodyNormalText(context),))
                              ],
                            ),
                            kSmallVerticalSpacing,
                            Row(
                              children: [
                               Icon(Icons.person_outline, color: kBlackColor,),
                                kSmallHorizontalSpacing,
                                Expanded(child: Text("Sammy Droid", style: bodyNormalText(context).copyWith(fontWeight: FontWeight.normal),))
                              ],
                            ),
                            kSmallVerticalSpacing,
                            Row(
                              children: [
                                Icon(Icons.note_add_outlined, color: kBlackColor,),
                                kSmallHorizontalSpacing,
                                Expanded(child: Text("We can meet at the Mega chicken outlet close to the sqaure mall", style: bodyNormalText(context).copyWith(fontWeight: FontWeight.normal),))
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      width: size.width * 0.9,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: darkPrimaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text("12",
                              style:
                                  heading1(context).copyWith(color: kWhiteColor)),
                          kTinyVerticalSpacing,
                          Text("Upcoming Schedules",
                              style: bodyNormalText(context)
                                  .copyWith(color: kWhiteColor)),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 0,
                        right: 2,
                        child: Image.asset("assets/images/elipse_2.png")),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset("assets/images/elipse_3.png"))
                  ],
                ),
              ),
            ),
            kLargeVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                child: TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay =
                          focusedDay; // update `_focusedDay` here as well
                    });
                  },
                  // calendarFormat: _calendarFormat,
                  // onFormatChanged: (format) {
                  //   setState(() {
                  //     _calendarFormat = format;
                  //   });
                  // },
                ),
              ),
            ),
            kLargeVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text("TUE\n27", style: bodyNormalText(context),),
                  kMediumHorizontalSpacing,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppointmentBlock(size: size),
                        kSmallVerticalSpacing,
                        AppointmentBlock(size: size),
                        kSmallVerticalSpacing,
                        AppointmentBlock(size: size)
                      ],
                    ),
                  )
                ],
              ),
            ),
            kSmallVerticalSpacing,
          ],
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

class AppointmentBlock extends StatelessWidget {
  const AppointmentBlock({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width*0.8,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Measurement Appointment", style: bodySmallText(context).copyWith(color: kWhiteColor),),
          Text("Sammy Droid", style: bodyTinyText(context).copyWith(color: kWhiteColor),),
        ],
      ),
    );
  }
}
