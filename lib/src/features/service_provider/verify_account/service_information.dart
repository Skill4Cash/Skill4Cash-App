import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/features/widgets/app_dropdown.dart';
import 'package:Skill4Cash/src/features/widgets/app_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utilities/app_textstyle.dart';
import '../../widgets/app_button.dart';

class ServiceInformationScreen extends StatelessWidget {
  const ServiceInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _options = ["Fashion", "Catering", "Wellness", "Software Development"];
    String? _currentSelectedValue;

    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 100,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: kTextColor,
            size: 18,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text("Service Information",
            style: heading2(context).copyWith(
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Business Name",
                      style: bodyNormalText(context).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "As it will appear to customers",
                      style: bodySmallText(context).copyWith(
                          // fontWeight: FontWeight.bold,
                          ),
                    ),
                    kMediumVerticalSpacing,
                    AppTextField(
                      hintText: "Business Name",
                    ),
                    kLargeVerticalSpacing,
                    Text(
                      "Service Category",
                      style: bodyNormalText(context).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Choose your service category",
                      style: bodySmallText(context).copyWith(
                          // fontWeight: FontWeight.bold,
                          // color: kPrimaryColor,
                          ),
                    ),
                    kMediumVerticalSpacing,
                    AppDropDown(
                        options: _options, currentItem: _currentSelectedValue),
                    kLargeVerticalSpacing,
                    Text(
                      "Keywords",
                      style: bodyNormalText(context).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Help customers find you with ease",
                      style: bodySmallText(context).copyWith(
                          // fontWeight: FontWeight.bold,
                          // color: kPrimaryColor,
                          ),
                    ),
                    kMediumVerticalSpacing,
                    GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        // childAspectRatio: Responsive.isMobile(context)
                        //     ? 9.5 / 8
                        //     : Responsive.isLowerMobile(context)
                        //         ? 7 / 4
                        //         : 7 / 4,
                        // mainAxisSpacing: Dimensions.big,
                        // crossAxisSpacing: Dimensions.big,
                      ),
                      itemBuilder: (context, index) => Chip(
                        label: Text(
                          "dqsd",
                        ),
                        deleteIcon: Icon(
                          Icons.cancel,
                          size: 15,
                        ),
                        onDeleted: () {},
                      ),
                    ),
                    Text(
                      "*this is visible to only you",
                      style: bodySmallText(context).copyWith(
                          // fontWeight: FontWeight.bold,
                          // color: kPrimaryColor,
                          ),
                    ),
                    kLargeVerticalSpacing,
                    Text(
                      "Gallery",
                      style: bodyNormalText(context).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Upload a few photos of your service",
                      style: bodySmallText(context).copyWith(
                          // fontWeight: FontWeight.bold,
                          // color: kPrimaryColor,
                          ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width / 3,
                      child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) =>
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: buildUpload(context),
                              )),
                    ),
                    kLargeVerticalSpacing,
                    Text(
                      "Service Description",
                      style: bodyNormalText(context).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AppTextField(
                      maxLines: 6,
                      hintText: "Description",
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: AppButton(
                  color: kPrimaryColor,
                  label: "Done",
                  onPressed: () {},
                )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildUpload(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color(0xFFEEEEEE),
        //     spreadRadius: 6,
        //     blurRadius: 10,
        //   ),
        // ],
      ),
      child: Transform.rotate(
          angle: 262.3,
          child: Icon(
            Icons.image,
            color: Colors.grey,
          )),
    );
  }
}
