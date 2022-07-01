import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/base_change_notifier.dart';
import 'package:Skill4Cash/src/core/utilities/images.dart';
import 'package:Skill4Cash/src/features/customers/dashboard/controller/service_provider_arround_controller.dart';
import 'package:Skill4Cash/src/features/widgets/app_button.dart';
import 'package:Skill4Cash/src/features/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/app_loading.dart';

class ServiceProvidersAroundScreen extends StatelessWidget {
  const ServiceProvidersAroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        centerTitle: true,
        title: Text(
          "Service Providers Around Me",
          style: heading2(context),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: kTextColor,
            size: heading2(context).height,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(
              double.infinity, MediaQuery.of(context).textScaleFactor * 70),
          child: Container(
            // decoration: BoxDecoration(
            //   boxShadow: [
            //     BoxShadow(
            //       color: Color(0xFFEEEEEE),
            //       spreadRadius: 10,
            //       blurRadius: 10,
            //     ),
            //   ],
            // ),
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
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
                                  style: heading2(context),
                                ),
                                kSmallVerticalSpacing,
                                Text(
                                  "location",
                                  style: bodyNormalText(context),
                                ),
                                kExtraSmallVerticalSpacing,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: kPrimaryColor,
                                      size: bodyNormalText(context).height,
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
        ),
      ),
      body: Column(
        children: [
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
                  size: bodyNormalText(context).height,
                ),
                Text(
                  "Ikeja, Lagos",
                  style: bodyNormalText(context),
                ),
              ],
            ),
          ),
          Expanded(
            child: GetBuilder<ServiceProviderAroundController>(
                init: ServiceProviderAroundController(),
                builder: (controller) {
                  if (controller.state.isLoading) {
                    return AppLoading();
                  } else if (controller.spListResponse?.data == null ||
                      controller.spListResponse!.data.isEmpty) {
                    return Text("No service Provider Available");
                  } else {
                    return ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.spListResponse!.data.length,
                        itemBuilder: (context, index) => Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                              padding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                              decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFFEEEEEE),
                                      spreadRadius: 6,
                                      blurRadius: 10,
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: ListTile(
                                leading: Container(
                                  width: 80,
                                  height: 80,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(image)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                                title: Text(
                                  "${controller.spListResponse!.data[index].user.firstName} ${controller.spListResponse!.data[index].user.lastName}"
                                      .capitalize!,
                                  maxLines: 2,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: bodyNormalText(context),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.spListResponse!.data[index]
                                          .businessName,
                                      style: bodySmallText(context),
                                    ),
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
                                    ),
                                  ],
                                ),
                              ),
                            ));
                  }
                }),
          )
        ],
      ),
    );
  }
}
