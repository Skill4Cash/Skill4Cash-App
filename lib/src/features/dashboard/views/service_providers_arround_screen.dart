import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/images.dart';
import 'package:Skill4Cash/src/views/widgets/app_button.dart';
import 'package:Skill4Cash/src/views/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

class ServiceProvidersAroundScreen extends StatelessWidget {
  const ServiceProvidersAroundScreen({Key? key}) : super(key: key);
  static const routeName = "/serviceProvidersAroundScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Service Providers Around Me",
          style: heading2(context),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            color: kTextColor,
            size: 16,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFEEEEEE),
                  spreadRadius: 10,
                  blurRadius: 10,
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: AppTextField(
              prefixIcon: Icon(Icons.search),
              suffixIcon: GestureDetector(
                onTap: () => showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    context: context,
                    builder: (context) => Container(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                kMediumVerticalSpacing,
                                Text(
                                  "Sorted By",
                                  style: bodyNormalText(context),
                                ),
                                kSmallVerticalSpacing,
                                Text(
                                  "location",
                                  style: bodyNormalText(context),
                                ),
                                kSmallVerticalSpacing,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: kPrimaryColor,
                                      size: 13,
                                    ),
                                    Text(
                                      "Ikeja, Lagos",
                                      style: bodyNormalText(context),
                                    ),
                                  ],
                                ),
                                kMediumVerticalSpacing,
                                Text(
                                  "Categories",
                                  style: bodyNormalText(context),
                                ),
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
                                    itemCount: 15,
                                    itemBuilder: (context, index) => FilterChip(
                                        backgroundColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        selectedColor: Colors.orange,
                                        label: Text("Education"),
                                        onSelected: (bool? bo) {})),
                                kMediumVerticalSpacing,
                                Text(
                                  "Categories",
                                  style: bodyNormalText(context),
                                ),
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
                                    itemCount: 15,
                                    itemBuilder: (context, index) => FilterChip(
                                        backgroundColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        selectedColor: Colors.orange,
                                        label: Text("Education"),
                                        onSelected: (bool? bo) {})),
                                Row(
                                  children: [
                                    Expanded(
                                        child: AppButton(
                                      label: "Apply",
                                      onPressed: () {},
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                child: Container(
                  color: kPrimaryColor,
                  child: Icon(
                    Icons.filter_list_rounded,
                    color: kWhiteColor,
                  ),
                ),
              ),
              label: "",
              hintText: "Search for a service",
            ),
          ),
          kSmallVerticalSpacing,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: kPrimaryColor,
                  size: 13,
                ),
                Text(
                  "Ikeja, Lagos",
                  style: bodyNormalText(context),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (conext, index) => Container(
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFEEEEEE),
                        spreadRadius: 6,
                        blurRadius: 10,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(image)),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    kSmallHorizontalSpacing,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wonderous Creations Clothiers",
                          style: bodyNormalText(context),
                        ),
                        kExtraSmallVerticalSpacing,
                        Text(
                          "Fashion",
                          style: bodySmallText(context),
                        ),
                        kExtraSmallVerticalSpacing,
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 13,
                              color: kPrimaryColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 13,
                              color: kPrimaryColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 13,
                              color: kPrimaryColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 13,
                              color: kPrimaryColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 13,
                              color: kPrimaryColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 13,
                              color: kPrimaryColor,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
