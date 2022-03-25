import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../../../core/utilities/app_textstyle.dart';

class KeywordScreen extends StatelessWidget {
  const KeywordScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kLargeVerticalSpacing,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 15),
              width: size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: kPrimaryColor,
                  width: 1.5
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children:[
                  Text("8", style: heading1(context).copyWith(fontWeight: FontWeight.bold),),
                  kSmallVerticalSpacing,
                  Text("Keyword Hits", style: bodyNormalText(context),),
                ]
              ),
            ),
            kSmallVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("My Keywords", style: bodyNormalText(context),),
                   GridView.builder(
                                      // controller: booksScrollController,
                                      shrinkWrap: true,
                                      keyboardDismissBehavior:
                                          ScrollViewKeyboardDismissBehavior
                                              .onDrag,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      padding: const EdgeInsets.all(8),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                        childAspectRatio: 7 / 3,
                                        // mainAxisSpacing: 4,
                                        // crossAxisSpacing: 5,
                                      ),
                                      itemCount: 8,
                                      itemBuilder: (context, index) =>
                                         Tag()),
                ],
              ),
            ),
            kSmallVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Top Keywords", style: bodyNormalText(context),),
                  kSmallVerticalSpacing,
                  Row(
                    children: [
                      Expanded(child: Text("Wiring", style: bodySmallText(context),)),
                      Text("3", style: bodySmallText(context),),
                      Icon(Icons.arrow_upward, size: 14, color: kPrimaryColor,)
                    ],
                  ),
                  kSmallVerticalSpacing,
                  Row(
                    children: [
                      Expanded(child: Text("Wiring", style: bodySmallText(context),)),
                      Text("3", style: bodySmallText(context),),
                      Icon(Icons.arrow_downward,size: 14, color: kErrorColor,)
                    ],
                  ),
                  kSmallVerticalSpacing,
                  Row(
                    children: [
                      Expanded(child: Text("Wiring", style: bodySmallText(context),)),
                      Text("3", style: bodySmallText(context),),
                      Icon(Icons.arrow_upward, size: 14, color: kPrimaryColor,)
                    ],
                  ),
                  kSmallVerticalSpacing,
                  Row(
                    children: [
                      Expanded(child: Text("Wiring", style: bodySmallText(context),)),
                      Text("3", style: bodySmallText(context),),
                      Icon(Icons.arrow_upward, size: 14, color: kPrimaryColor,)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      leading:InkWell(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: kTextColor,
          size: 16,
        ),
      ),
      backgroundColor: Colors.white,
      title: Text("Keyword Insights",
          style: bodyNormalText(context)
              .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
      centerTitle: true,
    );
  }
}

class Tag extends StatelessWidget {
  const Tag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.only(right: 4, bottom: 7),
      decoration: BoxDecoration(border: Border.all(
        color: kBlackColor,
        width: 1.0
      ),
      borderRadius: BorderRadius.circular(5)
      ),
      child: Text("Wiring", style: bodyTinyText(context).copyWith(color: Colors.black38)),
    );
  }
}