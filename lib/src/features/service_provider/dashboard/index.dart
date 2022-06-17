import 'package:Skill4Cash/src/core/model/rating_model.dart';
import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/routes/route_manager.dart';
import 'components/rating_card.dart';

class SpDashboard extends StatefulWidget {
  const SpDashboard({Key? key}) : super(key: key);

  @override
  State<SpDashboard> createState() => _SpDashboardState();
}

class _SpDashboardState extends State<SpDashboard> {
  var verified = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, ServiceProviderRoutes.spScheduleRoute),
                        child: Boxes(context, name: "Schedules", count: 12)),
                    kSmallHorizontalSpacing,
                    InkWell(
                      onTap: () => Navigator.pushNamed(
                          context, CustomerRoutes.chatRoute),
                      child: Boxes(context, name: "Messages", count: 4),
                    ),
                    kSmallHorizontalSpacing,
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, ServiceProviderRoutes.spKeywordRoute);
                        },
                        child: Boxes(context, name: "Keyword Hits", count: 8)),
                  ],
                ),
              ),
              verified
                  ? _buildBox(
                      context,
                      title: "Currently in review",
                      subtitle: "Your credentials are currently under review",
                      requirements: "Have a look around as you wait",
                      icon: Icon(
                        Icons.notifications,
                        color: kPrimaryColor,
                      ),
                    )
                  : _buildBox(
                      context,
                      title: "Verify your account",
                      subtitle: "To enjoy the full Skill4Cash experience",
                      requirements:
                          "*Required documents: National ID and Business/Artisan Certificate",
                      icon: Icon(
                        Icons.lock,
                        color: kPrimaryColor,
                      ),
                    ),
              kMediumVerticalSpacing,
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
              Container(
                height: size.height * 0.3,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (_, index) {
                      return BuildRating(
                        image: ratingData[index].image,
                        name: ratingData[index].text,
                        comment: ratingData[index].comment,
                        shadowColor: kPrimaryColor.withOpacity(0.1),
                      );
                    }),
              )
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

  Widget _buildBox(
    BuildContext context, {
    required Icon icon,
    required String title,
    required String subtitle,
    String requirements = '',
  }) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            verified = !verified;
            setState(() {
              verified;
            });
          },
          child: Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: EdgeInsets.all(5),
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
                        child: icon),
                    kSmallHorizontalSpacing,
                    Expanded(
                      flex: 1,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: heading2(context)
                                  .copyWith(color: kWhiteColor),
                            ),
                            kTinyVerticalSpacing,
                            Text(
                              subtitle,
                              style: bodyNormalText(context).copyWith(
                                  color: kWhiteColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            kTinyVerticalSpacing,
                            Text(
                              requirements,
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
        ),
        Positioned(
            top: 0, right: 2, child: Image.asset("assets/images/elipse_2.png")),
        Positioned(
            top: 0, right: 0, child: Image.asset("assets/images/elipse_3.png"))
      ],
    );
  }

  Widget Boxes(context, {required String name, required int count}) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.25,
        height: size.height * 0.2,
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
                  '$count',
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

// class Boxes extends StatelessWidget {
//   final String name;
//   final String count;
//   const Boxes({
//     Key? key,
//     required this.name,
//     required this.count,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Container(
//         width: size.width * 0.2,
//         height: size.height * 0.2,
//         padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//         decoration: BoxDecoration(
//             color: kWhiteColor,
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.black12,
//                   blurRadius: 20.0,
//                   offset: Offset(1.0, 1.0))
//             ],
//             borderRadius: BorderRadius.circular(10)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Container(
//                     // margin: EdgeInsets.only(right: kPad),
//                     padding: EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       color: kPrimaryColor.withOpacity(0.1),
//                       shape: BoxShape.circle,
//                       boxShadow: [
//                         BoxShadow(
//                             color: Colors.black12,
//                             blurRadius: 20.0,
//                             offset: Offset(1.0, 1.0))
//                       ],
//                     ),
//                     child: SvgPicture.asset("assets/images/todo.svg")),
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   count,
//                   style: heading2(context)
//                       .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
//                 ),
//                 kTinyVerticalSpacing,
//                 Text(
//                   name,
//                   style: bodySmallText(context),
//                 )
//               ],
//             )
//           ],
//         ));
//   }
// }
