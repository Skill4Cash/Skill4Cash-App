import 'package:Skill4Cash/src/core/model/rating_model.dart';
import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/routes/route_manager.dart';
import 'components/rating_card.dart';

class SpDashboard extends StatelessWidget {
  const SpDashboard({Key? key}) : super(key: key);

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
              kLargeVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPad),
                child: Row(
                  children: [
                    Expanded(child: Boxes(name: "Schedules", count: "12")),
                    kSmallHorizontalSpacing,
                    Expanded(child: Boxes(name: "Messages", count: "4")),
                    kSmallHorizontalSpacing,
                    Expanded(
                        child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  ServiceProviderRoutes.spKeywordRoute);
                            },
                            child: Boxes(name: "Keyword Hits", count: "8"))),
                  ],
                ),
              ),
              kLargeVerticalSpacing,
              kLargeVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPad),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Ratings and Reviews",
                      style: bodyNormalText(context),
                    )),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, ServiceProviderRoutes.spRatingRoute);
                        },
                        child: Text(
                          "See all",
                          style: bodySmallText(context)
                              .copyWith(color: kPrimaryColor),
                        ))
                  ],
                ),
              ),
              // kSmallVerticalSpacing,
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return BuildRating(
                      image: ratingData[index].image,
                      name: ratingData[index].text,
                      comment: ratingData[index].comment,
                      shadowColor: kPrimaryColor.withOpacity(0.1),
                    );
                  })
            ])
          ]),
        ));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kWhiteColor,
      automaticallyImplyLeading: false,
      centerTitle: true,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
              context, ServiceProviderRoutes.settingScreenRoute);
        },
        child: Container(
          margin: EdgeInsets.only(left: kPad),
          // padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundImage: AssetImage(profileImg),
          ),
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
        Row(
          children: [
            Text(
              "Hi, Tailor Swift services",
              style:
                  bodyNormalText(context).copyWith(fontWeight: FontWeight.w400),
            ),
            kTinyHorizontalSpacing,
            Icon(
              Icons.verified,
              color: kPrimaryColor,
              size: 18,
            )
          ],
        ),
        kTinyVerticalSpacing,
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
        width: MediaQuery.of(context).size.width * 0.3,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
            color: kWhiteColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                  offset: Offset(1.0, 1.0))
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  count,
                  style: heading2(context)
                      .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                kTinyVerticalSpacing,
                Text(
                  name,
                  style: bodySmallText(context),
                )
              ],
            )
          ],
        ));
  }
}
