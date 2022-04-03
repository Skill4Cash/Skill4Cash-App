import 'dart:async';

import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utilities/app_textstyle.dart';
import '../../../core/utilities/constants.dart';
import '../../widgets/app_button.dart';
import 'components/plan_cards.dart';

class S4CSubPlanScreen extends StatefulWidget {
  const S4CSubPlanScreen({Key? key}) : super(key: key);

  @override
  State<S4CSubPlanScreen> createState() => _S4CSubPlanScreenState();
}

class _S4CSubPlanScreenState extends State<S4CSubPlanScreen> {
  List<Widget> cardSlides = [
    BuildCards(
        planName: "Standard plan",
        planAmount: "5,000",
        planDesc: "Get your standard plan\nvalid for 30 days"),
    BuildCards(
        planName: "Premium plan",
        planAmount: "10,000",
        planDesc: "Get your premium plan\nvalid for 30 days"),
    BuildCards(
        planName: "Basic plan",
        planAmount: "2,500",
        planDesc: "Get your basic plan\nvalid for 14 days"),
  ];
  int currentIndex = 0;
  late PageController _controller;
  late Timer? _pageAnimationTimer;

  // void _animateSlides() {
  //   if (_controller == null) return;
  //   if (currentIndex < 4) {
  //     _controller.nextPage(
  //       duration: const Duration(milliseconds: 700),
  //       curve: Curves.easeIn,
  //     );
  //   }
  // }

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.2),
            Expanded(
              child: PageView.builder(
                  // padEnds: false,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  controller: PageController(
                    viewportFraction: 0.8
                  ),
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: cardSlides.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: cardSlides[index],
                    );
                  }),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  cardSlides.length,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
            kLargeVerticalSpacing,
            kLargeVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Container(
                width: double.infinity,
                child: AppButton(
                  label: "Select Plan",
                  color: kPrimaryColor,
                  onPressed: () {
                    Navigator.of(context).pushNamed(ServiceProviderRoutes.s4cSubPayRoute);
                  },
                ),
              ),
            ),
            SizedBox(height: size.height * 0.1),

            // BuildCards()
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
      title: Text("S4C Subscription Plan",
          style: bodyNormalText(context)
              .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
      centerTitle: true,
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index ? kPrimaryColor : kTextFieldFillColor,
      ),
    );
  }
}
