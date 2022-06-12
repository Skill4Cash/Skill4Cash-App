import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpViewScreen extends StatelessWidget {
  const SpViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kLargeVerticalSpacing,
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/sp_1.jpg"),
                radius: 50,
              ),
              kTinyVerticalSpacing,
              Text("Wonderous Creations Clothiers",
                  style: bodyNormalText(context)
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
              Text("Fashion", style: bodySmallText(context)),
              kSmallVerticalSpacing,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: kPrimaryColor,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: kPrimaryColor,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: kPrimaryColor,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: kPrimaryColor,
                    size: 16,
                  ),
                ],
              ),
              kSmallVerticalSpacing,
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: kPrimaryColor, width: 2)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.message,
                      size: 16,
                      color: kPrimaryColor,
                    ),
                    Text("Review",
                        style: bodyNormalText(context)
                            .copyWith(color: kPrimaryColor)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Description",
                      style: bodyNormalText(context)
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              ),
              kSmallVerticalSpacing,
              Text(
                  "will sew clothes for food. no joke, i really do sabi this fashion thing sha. patronise us, plis. #keyword #keyword",
                  style: bodySmallText(context)),
              kLargeVerticalSpacing,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Photos",
                    style: bodyNormalText(context),
                  ),
                  Text(
                    "See all",
                    style:
                        bodyNormalText(context).copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
              kSmallVerticalSpacing,
              SizedBox(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/sp_1.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              kSmallVerticalSpacing,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rating and Reviews",
                    style: bodyNormalText(context),
                  ),
                  Text(
                    "See all",
                    style:
                        bodyNormalText(context).copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 3),
                          blurRadius: 3,
                        )
                      ]),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/sp_1.jpg"),
                                radius: 10,
                              ),
                              Text(
                                "Tabitha",
                                style: bodyNormalText(context)
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: kPrimaryColor,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: kPrimaryColor,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: kPrimaryColor,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: kPrimaryColor,
                                size: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                      kSmallVerticalSpacing,
                      Text(
                        "review revie wreview review reviewreview revierew iewreviewreviewreviewreviewreviewreviewreviewiewrev iewreview",
                        style: bodyNormalText(context),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      // toolbarHeight: 100,
      automaticallyImplyLeading: true,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(
          Icons.arrow_back_ios,
          color: kTextColor,
          size: 18,
        ),
      ),
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Text("Service provider view",
              style: bodyNormalText(context)
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 15)),
        ],
      ),
      centerTitle: true,
    );
  }
}
