import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utilities/app_textstyle.dart';
import '../../../core/utilities/constants.dart';
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
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Expanded(
              flex: 1,
              child: PageView.builder(
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
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
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index ? kPrimaryColor : kTextFieldFillColor,
      ),
    );
  }
}
