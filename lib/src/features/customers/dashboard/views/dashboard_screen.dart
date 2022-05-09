import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/features/widgets/app_button.dart';
import 'package:Skill4Cash/src/features/widgets/app_dialog.dart';
import 'package:Skill4Cash/src/features/widgets/app_textfield.dart';
import 'package:Skill4Cash/src/features/widgets/service_pill.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool select = false;
    List<UserLocation> _userLocation = [
      UserLocation(location: "Lagos", subLocation: ["Ikeja", "Epe"]),
      UserLocation(location: "Abia", subLocation: ["Ikeja", "Epe"]),
      UserLocation(location: "Adamawa", subLocation: ["Ikeja", "Epe"]),
      UserLocation(location: "Akwa ibom", subLocation: ["Ikeja", "Epe"]),
    ];
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
        backgroundColor: kWhiteColor,
        // elevation: 0,

        centerTitle: true,
        title: TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AppDialog(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 24),
                      child: Column(
                        children: [
                          Text(
                            "Select an Option",
                            style: heading2(context),
                          ),
                          Expanded(
                            child: Container(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: _userLocation.length,
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemBuilder:
                                      (context, index) => GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (context) => AppDialog(
                                                              child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        24,
                                                                    vertical:
                                                                        24),
                                                            child: Column(
                                                              children: [
                                                                GestureDetector(
                                                                  onTap: () =>
                                                                      Navigator.pop(
                                                                          context),
                                                                  child: Row(
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_back_ios,
                                                                        size:
                                                                            13,
                                                                      ),
                                                                      kTinyHorizontalSpacing,
                                                                      Text(
                                                                        _userLocation[index]
                                                                            .location,
                                                                        style: heading2(
                                                                            context),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    child: ListView.builder(
                                                                        physics: BouncingScrollPhysics(),
                                                                        scrollDirection: Axis.vertical,
                                                                        shrinkWrap: true,
                                                                        itemCount: _userLocation[index].subLocation.length,
                                                                        itemBuilder: (context, index1) => Padding(
                                                                              padding: const EdgeInsets.all(12),
                                                                              child: Text(
                                                                                _userLocation[index].subLocation[index1],
                                                                                style: bodyNormalText(context),
                                                                              ),
                                                                            )),
                                                                  ),
                                                                ),
                                                                AppButton(
                                                                  label:
                                                                      "Apply",
                                                                  color:
                                                                      kPrimaryColor,
                                                                  onPressed:
                                                                      () {},
                                                                ),
                                                              ],
                                                            ),
                                                          )));
                                            },
                                            child: userLocation(context,
                                                text: _userLocation[index]
                                                    .location),
                                          )),
                            ),
                          )
                        ],
                      ),
                    )));
          },
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: kPrimaryColor,
                size: heading2(context).height,
              ),
              Text(
                "Ikeja, Lagos",
                style: heading2(context),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: kPrimaryColor,
                size: heading2(context).height,
              ),
            ],
          ),
        ),
        leading: Container(
          margin: EdgeInsets.only(left: kPad),
          padding: EdgeInsets.only(top: 8),
          child: CircleAvatar(
            backgroundImage: AssetImage(profileImg),
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
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
                                style: bodyNormalText(context),
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
                    ),
                    Text(
                      "Skill4Cash Disclaimer",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Featured Service",
                      style: heading2(context).copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Spacer(),
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
            kSmallVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: GridView.builder(
                // controller: booksScrollController,
                shrinkWrap: true,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                physics: const BouncingScrollPhysics(),
                // padding: const EdgeInsets.only(
                //     right: 24, top: 24, bottom: 24, left: 16),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Service providers around me",
                      style: heading2(context).copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(
                        CustomerRoutes.serviceProvidersAroundScreenRoute),
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
              height: MediaQuery.of(context).textScaleFactor < 1.6 ? 300 : 350,
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

  Widget userLocation(
    BuildContext context, {
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: bodyNormalText(context)),
          Icon(
            Icons.arrow_forward_ios,
            color: kPrimaryColor,
            size: 13,
          ),
        ],
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
      clipBehavior: Clip.antiAlias,

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
      width: MediaQuery.of(context).textScaleFactor < 1.6 ? 150 : 200,
      // height: MediaQuery.of(context).textScaleFactor > 1.6 ? 200 : 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            constraints: const BoxConstraints.expand(
                width: double.infinity, height: 150),
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
              width: double.infinity,
              child: Text(
                title,
                maxLines: 3,
                style: bodyNormalText(context)
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              subtitle,
              style: bodyTinyText(context)
                  .copyWith(fontWeight: FontWeight.w400, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
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

class UserLocation {
  final String location;
  final List<String> subLocation;
  const UserLocation({
    required this.location,
    required this.subLocation,
  });
}
