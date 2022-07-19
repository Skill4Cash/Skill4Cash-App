import 'package:Skill4Cash/src/core/model/rating_model.dart';
import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/features/service_provider/settings/sp_guidelines_screen.dart';
import 'package:Skill4Cash/src/features/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ServiceProviderProfileScreen extends StatelessWidget {
  const ServiceProviderProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<ServiceImages> serviceImages = [
      ServiceImages(image: spImage_1),
      ServiceImages(image: spImage_2),
      ServiceImages(image: spImage_3),
      ServiceImages(image: spImage_1),
      ServiceImages(image: spImage_2),
      ServiceImages(image: spImage_3),
      ServiceImages(image: spImage_1),
    ];

    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            color: kTextColor,
            size: 16,
          ),
          backgroundColor: kWhiteColor,
          automaticallyImplyLeading: false,
          title: Text(
            "Service Provider Profile",
            style: heading1(context),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            kMediumVerticalSpacing,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(profileImg),
                      radius: MediaQuery.of(context).size.width / 6,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Wonderous Creations Clothiers",
                          style: heading2(context),
                        ),
                        kExtraSmallHorizontalSpacing,
                        Text(
                          "Fashion",
                          style: serviceCategoryText(context),
                        ),
                        kExtraSmallHorizontalSpacing,
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
                              ),
                            ],
                          ),
                        ),
                        kExtraSmallHorizontalSpacing,
                        Text(
                          "Review",
                          style: bodySmallText(context),
                        ),
                      ],
                    ),
                  ],
                ),
                kLargeVerticalSpacing,
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8.0, left: 24),
                        child: Text('Description', style: labelText(context)),
                      ),
                      kSmallVerticalSpacing,
                      Text(
                        """
                     I sew clothes real good, I really do sabi this fashion thing sha, patronize us pls. #fashiondesigner #kiddiesclothing
                    """,
                        style: bodyNormalText(context),
                      ),
                      kSmallVerticalSpacing,
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8.0, left: 24),
                        child: Text('Photos', style: labelText(context)),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(CustomerRoutes.allServicesImagesRoute),
                        child: Text(
                          "See all",
                          style: bodyNormalText(context)
                              .copyWith(color: kPrimaryColor),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).textScaleFactor < 1.5
                            ? 300
                            : 350,
                        child: ListView.builder(
                            itemCount: serviceImages.length,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ServiceImages(
                                image: serviceImages[index].image)),
                      ),
                      kSmallVerticalSpacing,
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8.0, left: 24),
                        child: Text('Ratings and Reviews',
                            style: labelText(context)),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(CustomerRoutes.allServicesImagesRoute),
                        child: Text(
                          "See all images",
                          style: bodyNormalText(context)
                              .copyWith(color: kPrimaryColor),
                        ),
                      ),
                      // Container(
                      //   height: MediaQuery.of(context).textScaleFactor < 1.6 ? 300 : 350,
                      //   child: ListView.builder(
                      //       itemCount: ratingData.length,
                      //       scrollDirection: Axis.horizontal,
                      //       shrinkWrap: true,
                      //       itemBuilder: (context, index) => RatingModel(
                      //           image: profileImg[index].image, text: "", comment: "")),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}

class ServiceImages extends StatelessWidget {
  final String image;
  const ServiceImages({
    Key? key,
    required,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: MediaQuery.of(context).textScaleFactor < 1.6 ? 150 : 200,
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
          ]),
    );
  }
}
