import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:flutter/material.dart';

class GuidelinesScreenCustomer extends StatelessWidget {
  const GuidelinesScreenCustomer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: kBlackColor,
          ),
        ),
        title: Text(
          "Guidelines and Legal Agreement",
          style: heading2(context),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kSmallVerticalSpacing,
              Text(
                """
                GuideLines and Legal Agreement (for Customer and Security Consciousness)
                  """,
                style: heading2(context),
                textAlign: TextAlign.center,
              ),
              kSmallVerticalSpacing,
              Text(
                """
                1. Skill4Cash is not entering into contract with either of the parties (both service provider and customer). We only stand as a middle man that helps in meeting up of the parties thereof.
                
                
                2. Our company is not responsible for any lose, agreement, disagreement, forfeiture, disappointment, etc that might occur in the process of your transaction with each other whatsoever. 
                
                Nonetheless, we have done our diligence by having full documents of our service providers on our catalogue via KYC scheme. Hence, to the utmost point of our understanding, 
                we guarantee their genuineness and honesty, kindly look out for verified service providers on the catalogue.


               3. Monetary transaction can be made between the two parties in any form seems appropriate to them. Save in, we strongly enjoin our potential customers to be acquainted to the service provider 
               and be convinced of his/her genuineness before proceeding to payment.


               4. Full details, customer reviews and rate of the service provider has been provided on the platform. We enjoin you to check through and be satisfied with his/her information therein before having any agreement with him/her.
               
               
               5. When a service provider is required to visit your home or office to render his service or deliver your ordered product, we advise that you keep all valuable and sensitive items 
               in your house or office away from the sight of the service provider.


               6. If any service provider does not diligently render is service as expected, you can reach out to us and always write customer review on his timeline and rate his diligence on our platform.
                """,
                  style: bodyNormalText(context),
                )
            ],
          ),
        ),
      ),
    );
  }
}
