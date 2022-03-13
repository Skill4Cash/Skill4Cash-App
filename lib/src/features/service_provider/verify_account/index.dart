import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyDashboardSP extends StatelessWidget {
  const VerifyDashboardSP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          // padding: EdgeInsets.symmetric(horizontal: kPad),
          child: ListView(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              kMediumVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: _buildHeader(context),
              ),
              kMediumVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: _buildBox(context),
              ),
              kLargeVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPad),
                child: Row(
                  children: [
                    Expanded(child: Boxes(name: "Schedules", count: "0")),
                    kSmallHorizontalSpacing,
                    Expanded(child: Boxes(name: "Messages", count: "0")),
                  ],
                ),
              ),
              kSmallVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPad),
                child: Row(
                  children: [
                    Expanded(child: Boxes(name: "Schedules", count: "0")),
                    kSmallHorizontalSpacing,
                    Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 8),
                        decoration: BoxDecoration(
                            color: darkPrimaryColor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 20.0,
                                  offset: Offset(1.0, 1.0))
                            ],
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Service category",
                                    style: bodyNormalText(context)
                                        .copyWith(color: kWhiteColor),
                                  ),
                                  Text(
                                    "Fashion",
                                    style: heading1(context).copyWith(
                                        fontSize: 20, color: kWhiteColor),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                // margin: EdgeInsets.only(right: kPad),
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 20.0,
                                        offset: Offset(1.0, 1.0))
                                  ],
                                ),
                                child:
                                    SvgPicture.asset("assets/images/todo.svg")),
                          ],
                        )),
                  ],
                ),
              ),
              kSmallVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPad),
                child: Row(
                  children: [
                    Expanded(child: Text("Ratings and Reviews", style: bodyNormalText(context),)),
                    TextButton(onPressed: (){}, child: Text("Seel all", style: bodySmallText(context).copyWith(color: kPrimaryColor),))
                  ],
                ),
              ),
              kLargeVerticalSpacing,
              Center(child: Image(image: AssetImage("assets/images/amico.png"))),
            ])
          ]),
        ));
  }

  Widget _buildBox(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
          decoration: BoxDecoration(
            color: darkPrimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.lock,
                        color: kPrimaryColor,
                      )),
                  kSmallHorizontalSpacing,
                  Expanded(
                    flex: 1,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Verify your account",
                            style:
                                heading2(context).copyWith(color: kWhiteColor),
                          ),
                          kTinyVerticalSpacing,
                          Text(
                            "To enjoy the full Skill4Cash experience",
                            style: bodyNormalText(context).copyWith(
                                color: kWhiteColor,
                                fontWeight: FontWeight.w400),
                          ),
                          kTinyVerticalSpacing,
                          Text(
                            "*Required documents: National ID and Business/Artisan Certificate",
                            style: bodyTinyText(context)
                                .copyWith(color: kPrimaryColor),
                          )
                        ]),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
            top: 0, right: 2, child: Image.asset("assets/images/elipse_2.png")),
        Positioned(
            top: 0, right: 0, child: Image.asset("assets/images/elipse_3.png"))
      ],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kWhiteColor,
      automaticallyImplyLeading: false,
      centerTitle: true,
      elevation: 0.0,
      leading: Container(
        margin: EdgeInsets.only(left: kPad),
        // padding: const EdgeInsets.all(8),
        child: CircleAvatar(
          backgroundImage: AssetImage(profileImg),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_on_outlined, color: kPrimaryColor),
          Text(
            "Ikeja, Lagos",
            style:
                bodyNormalText(context).copyWith(fontWeight: FontWeight.w400),
          ),
          // Icon(Icons.arrow_downward_outlined, color: kTextColor),
        ],
      ),
      actions: [
        Container(
            margin: EdgeInsets.only(right: kPad),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: kWhiteColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20.0,
                    offset: Offset(1.0, 1.0))
              ],
            ),
            child: SvgPicture.asset("assets/images/notification.svg"))
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, Tailor Swift services",
          style: bodyNormalText(context).copyWith(fontWeight: FontWeight.w400),
        ),
        Text(
          "Top of the day to you like that",
          style: bodySmallText(context).copyWith(color: kInactiveColor),
        ),
      ],
    );
  }
}

class Boxes extends StatelessWidget {
  final String name;
  final String count;
  const Boxes({
    Key? key,
    required this.name,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.45,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
            color: kWhiteColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                  offset: Offset(1.0, 1.0))
            ],
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: bodyNormalText(context),
                  ),
                  Text(
                    count,
                    style: heading1(context).copyWith(fontSize: 30),
                  ),
                ],
              ),
            ),
            Container(
                // margin: EdgeInsets.only(right: kPad),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20.0,
                        offset: Offset(1.0, 1.0))
                  ],
                ),
                child: SvgPicture.asset("assets/images/todo.svg")),
          ],
        ));
  }
}
