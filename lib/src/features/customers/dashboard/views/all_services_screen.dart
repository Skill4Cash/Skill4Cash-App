import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/features/widgets/app_button.dart';
import 'package:Skill4Cash/src/features/widgets/app_textfield.dart';
import 'package:Skill4Cash/src/features/widgets/service_pill.dart';
import 'package:flutter/material.dart';

class AllServicesScreen extends StatelessWidget {
  const AllServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ServicePill> servicePill = [
      ServicePill(title: "Electrical", icon: Icons.bolt_outlined),
      ServicePill(title: "Vehicle", icon: Icons.directions_car),
      ServicePill(title: "Fashion", icon: Icons.female_outlined),
      ServicePill(title: "Catering", icon: Icons.lunch_dining_outlined),
      ServicePill(title: "Plumbing", icon: Icons.handyman_outlined),
      ServicePill(title: "Graphics Design", icon: Icons.female_outlined),
      ServicePill(title: "Website Development", icon: Icons.code_off_outlined),
      ServicePill(title: "Product Design", icon: Icons.female_outlined),
      ServicePill(title: "Painting ", icon: Icons.format_paint_outlined),
      ServicePill(title: "Printing", icon: Icons.female_outlined),
      ServicePill(title: "Construction", icon: Icons.line_style_outlined),
      ServicePill(title: "Wellness", icon: Icons.medical_services_outlined),
      ServicePill(title: "Carpentry", icon: Icons.female_outlined),
      ServicePill(title: "Mobile Development", icon: Icons.female_outlined),
      ServicePill(title: "Glazier", icon: Icons.female_outlined),
      ServicePill(title: "Welder", icon: Icons.female_outlined),
      ServicePill(title: "Dry Cleaning ", icon: Icons.dry_cleaning_outlined),
      ServicePill(title: "Laptop Repair", icon: Icons.laptop_windows_outlined),
      ServicePill(title: "Construction", icon: Icons.female_outlined),
      ServicePill(title: "Wellness", icon: Icons.female_outlined),
      ServicePill(title: "Plumbing", icon: Icons.female_outlined),
      ServicePill(title: "Graphics Design", icon: Icons.female_outlined),
      ServicePill(title: "Website Development", icon: Icons.female_outlined),
      ServicePill(title: "Product Design", icon: Icons.female_outlined),
      ServicePill(title: "Painting ", icon: Icons.female_outlined),
      ServicePill(title: "Printing", icon: Icons.female_outlined),
      ServicePill(title: "Construction", icon: Icons.female_outlined),
      ServicePill(title: "Wellness", icon: Icons.female_outlined),
      ServicePill(title: "Plumbing", icon: Icons.female_outlined),
      ServicePill(title: "Graphics Design", icon: Icons.female_outlined),
      ServicePill(title: "Website Development", icon: Icons.female_outlined),
      ServicePill(title: "Product Design", icon: Icons.female_outlined),
      ServicePill(title: "Painting ", icon: Icons.female_outlined),
      ServicePill(title: "Printing", icon: Icons.female_outlined),
      ServicePill(title: "Construction", icon: Icons.female_outlined),
      ServicePill(title: "Wellness", icon: Icons.female_outlined),
    ];
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "All Services",
          style: heading2(context),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            color: kTextColor,
            size: heading2(context).height,
          ),
        ),
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
            ),
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
          preferredSize: Size(
              double.infinity, MediaQuery.of(context).textScaleFactor * 60),
        ),
      ),
      body: Column(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //     boxShadow: [
          //       BoxShadow(
          //         color: Color(0xFFEEEEEE),
          //         spreadRadius: 10,
          //         blurRadius: 10,
          //       ),
          //     ],
          //   ),
          //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
          //   child: AppTextField(
          //     prefixIcon: Icon(Icons.search),
          //     suffixIcon: GestureDetector(
          //       onTap: () => showModalBottomSheet(
          //           shape: RoundedRectangleBorder(
          //             side: BorderSide(
          //               color: Colors.grey,
          //             ),
          //             borderRadius: BorderRadius.only(
          //               topRight: Radius.circular(50),
          //               topLeft: Radius.circular(50),
          //             ),
          //           ),
          //           context: context,
          //           builder: (context) => Container(
          //                 padding: EdgeInsets.symmetric(horizontal: 24),
          //                 child: SingleChildScrollView(
          //                   physics: const BouncingScrollPhysics(),
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       kMediumVerticalSpacing,
          //                       Text(
          //                         "Sorted By",
          //                         style: bodyNormalText(context),
          //                       ),
          //                       kSmallVerticalSpacing,
          //                       Text(
          //                         "location",
          //                         style: bodyNormalText(context),
          //                       ),
          //                       kSmallVerticalSpacing,
          //                       Row(
          //                         crossAxisAlignment: CrossAxisAlignment.center,
          //                         children: [
          //                           Icon(
          //                             Icons.location_on_outlined,
          //                             color: kPrimaryColor,
          //                             size: 13,
          //                           ),
          //                           Text(
          //                             "Ikeja, Lagos",
          //                             style: bodyNormalText(context),
          //                           ),
          //                         ],
          //                       ),
          //                       kMediumVerticalSpacing,
          //                       Text(
          //                         "Categories",
          //                         style: bodyNormalText(context),
          //                       ),
          //                       GridView.builder(
          //                           // controller: booksScrollController,
          //                           shrinkWrap: true,
          //                           keyboardDismissBehavior:
          //                               ScrollViewKeyboardDismissBehavior
          //                                   .onDrag,
          //                           physics:
          //                               const NeverScrollableScrollPhysics(),
          //                           padding: const EdgeInsets.all(8),
          //                           gridDelegate:
          //                               SliverGridDelegateWithFixedCrossAxisCount(
          //                             crossAxisCount: 4,
          //                             childAspectRatio: 7 / 3,
          //                             // mainAxisSpacing: 4,
          //                             // crossAxisSpacing: 5,
          //                           ),
          //                           itemCount: 15,
          //                           itemBuilder: (context, index) => FilterChip(
          //                               backgroundColor: Colors.transparent,
          //                               shape: RoundedRectangleBorder(
          //                                   side: BorderSide(
          //                                     color: Colors.grey,
          //                                   ),
          //                                   borderRadius: BorderRadius.all(
          //                                       Radius.circular(8))),
          //                               selectedColor: Colors.orange,
          //                               label: Text("Education"),
          //                               onSelected: (bool? bo) {})),
          //                       kMediumVerticalSpacing,
          //                       Text(
          //                         "Categories",
          //                         style: bodyNormalText(context),
          //                       ),
          //                       GridView.builder(
          //                           // controller: booksScrollController,
          //                           shrinkWrap: true,
          //                           keyboardDismissBehavior:
          //                               ScrollViewKeyboardDismissBehavior
          //                                   .onDrag,
          //                           physics:
          //                               const NeverScrollableScrollPhysics(),
          //                           padding: const EdgeInsets.all(8),
          //                           gridDelegate:
          //                               SliverGridDelegateWithFixedCrossAxisCount(
          //                             crossAxisCount: 4,
          //                             childAspectRatio: 7 / 3,
          //                             // mainAxisSpacing: 4,
          //                             // crossAxisSpacing: 5,
          //                           ),
          //                           itemCount: 15,
          //                           itemBuilder: (context, index) => FilterChip(
          //                               backgroundColor: Colors.transparent,
          //                               shape: RoundedRectangleBorder(
          //                                   side: BorderSide(
          //                                     color: Colors.grey,
          //                                   ),
          //                                   borderRadius: BorderRadius.all(
          //                                       Radius.circular(8))),
          //                               selectedColor: Colors.orange,
          //                               label: Text("Education"),
          //                               onSelected: (bool? bo) {})),
          //                       Row(
          //                         children: [
          //                           Expanded(
          //                               child: AppButton(
          //                             label: "Apply",
          //                             onPressed: () {},
          //                           )),
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               )),
          //       child: Container(
          //         color: kPrimaryColor,
          //         child: Icon(
          //           Icons.filter_list_rounded,
          //           color: kWhiteColor,
          //         ),
          //       ),
          //     ),
          //     label: "",
          //     hintText: "Search for a service",
          //   ),
          // ),
          kSmallVerticalSpacing,
          Expanded(
            child: GridView.builder(
              // controller: booksScrollController,
              shrinkWrap: true,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(
                  right: 24, top: 24, bottom: 24, left: 16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: MediaQuery.of(context).textScaleFactor < 1.6
                    ? 2 / 3
                    : 4 / 8,
                mainAxisSpacing: 4,
                crossAxisSpacing: 5,
              ),
              itemCount: servicePill.length,
              itemBuilder: (context, index) => ServicePill(
                  title: servicePill[index].title,
                  icon: servicePill[index].icon),
            ),
          ),
        ],
      ),
    );
  }
}
