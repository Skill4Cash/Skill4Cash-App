import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/features/widgets/app_button.dart';
import 'package:Skill4Cash/src/features/widgets/app_textfield.dart';
import 'package:Skill4Cash/src/features/widgets/service_pill.dart';
import 'package:flutter/material.dart';
import 'all_services_screen.dart';
import 'service_providers_arround_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // bool select = false;
    List<ServicePill> servicePill = [
      ServicePill(title: "Electrical", icon: Icons.flash_on_outlined),
      ServicePill(title: "Vehicle", icon: Icons.directions_car),
      ServicePill(title: "Fashion", icon: Icons.female_outlined),
      ServicePill(title: "Catering", icon: Icons.female_outlined),
      ServicePill(title: "Plumbing", icon: Icons.female_outlined),
      ServicePill(title: "Graphics Design", icon: Icons.female_outlined),
      ServicePill(title: "Website Development", icon: Icons.female_outlined),
      ServicePill(title: "Product Design", icon: Icons.female_outlined),
      ServicePill(title: "Painting ", icon: Icons.female_outlined),
      ServicePill(title: "Printing", icon: Icons.female_outlined),
      ServicePill(title: "Construction", icon: Icons.female_outlined),
      ServicePill(title: "Wellness", icon: Icons.female_outlined),
    ];

    List<AroundMe> aroundMe = [
      AroundMe(
          image: image,
          title: "Wire, no frames electrical services",
          subtitle: "Electrical"),
      AroundMe(
          image: image,
          title: "Wonderous creations fashion house",
          subtitle: "Electrical"),
      AroundMe(
          image: image,
          title: "Wonderous creations fashion house",
          subtitle: "Electrical"),
      AroundMe(
          image: image,
          title: "Wonderous creations fashion house",
          subtitle: "Electrical"),
      AroundMe(
          image: image,
          title: "Wonderous creations fashion house",
          subtitle: "Electrical"),
      AroundMe(
          image: image,
          title: "Wonderous creations fashion house",
          subtitle: "Electrical"),
      AroundMe(
          image: image,
          title: "Wonderous creations fashion house",
          subtitle: "Electrical"),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
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
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: CircleAvatar(
            radius: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                      itemBuilder: (context, index) =>
                                          FilterChip(
                                              backgroundColor:
                                                  Colors.transparent,
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                      itemBuilder: (context, index) =>
                                          FilterChip(
                                              backgroundColor:
                                                  Colors.transparent,
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
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
            GestureDetector(
              onTap: () => showDialog(
                  context: context,
                  builder: (context) => Dialog(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 24, horizontal: 24),
                          constraints: BoxConstraints(maxHeight: 250),
                          child: Column(
                            children: [
                              Icon(
                                Icons.error_outline,
                                color: Colors.red,
                                size: 30,
                              ),
                              kMediumVerticalSpacing,
                              Text(
                                "Disclaimer",
                                style: bodyNormalText(context)
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                              kMediumVerticalSpacing,
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscin aaag elit. Vestibulum sollicitudin magna",
                                style: bodyTinyText(context),
                                textAlign: TextAlign.center,
                              ),
                              kLargeVerticalSpacing,
                              Row(
                                children: [
                                  Expanded(
                                    child: AppButton(
                                      color: kPrimaryColor,
                                      label: "Continue",
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.error_outline,
                      color: Colors.red,
                      size: 13,
                    ),
                    Text(
                      "Skill4Cash Disclaimer",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured Service",
                    style: heading2(context).copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushNamed(CustomerRoutes.allServicesRoute),
                    child: Text(
                      "See all",
                      style: bodyNormalText(context)
                          .copyWith(color: kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: GridView.builder(
                // controller: booksScrollController,
                shrinkWrap: true,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(
                    right: 24, top: 24, bottom: 24, left: 16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 2 / 3,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 5,
                ),
                itemCount: servicePill.length,
                itemBuilder: (context, index) => ServicePill(
                    title: servicePill[index].title,
                    icon: servicePill[index].icon),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Service providers around me",
                    style: heading2(context).copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushNamed(CustomerRoutes.serviceProvidersAroundScreenRoute),
                    child: Text(
                      "See all",
                      style: bodyNormalText(context)
                          .copyWith(color: kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  itemCount: aroundMe.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => AroundMe(
                      image: aroundMe[index].image,
                      title: aroundMe[index].title,
                      subtitle: aroundMe[index].subtitle)),
            )
          ],
        ),
      ),
    );
  }
}

class AroundMe extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  const AroundMe({
    Key? key,
    required,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhiteColor,
        border: Border.all(color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFEEEEEE),
            spreadRadius: 6,
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      width: 150,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            constraints: const BoxConstraints.expand(width: 150, height: 150),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 120,
                child: Text(
                  title,
                  style: bodyTinyText(context)
                      .copyWith(fontWeight: FontWeight.w600),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              subtitle,
              style: bodyTinyText(context)
                  .copyWith(fontWeight: FontWeight.w400, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
            ),
          )
        ],
      ),
    );
  }
}
