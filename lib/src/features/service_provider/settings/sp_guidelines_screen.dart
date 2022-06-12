import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:flutter/material.dart';

class GuidelinesScreenSp extends StatelessWidget {
  const GuidelinesScreenSp();
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
                Guidelines and Legal Agreement (for Service Provider and Security Consciousness)
                  """,
                style: heading2(context),
                textAlign: TextAlign.center,
              ),
              kSmallVerticalSpacing,
              Text(
                """
                1. Skill4Cash is not entering into contract with either of the parties (both service provider and customer). We only stand as a middle man that helps in meeting up of the parties thereof.
                
                
                2. Our company is not responsible for any lose, agreement, disagreement, forfeiture, disappointment, etc that might occur in the process of your transaction with each other whatsoever. 


               3. Monetary transaction can be made between the two parties in any form seems appropriate to them. The service provider mostly determine the platform where the transaction can be made 
to considering the convenience of the customer as well.


               4. Safety and security is one of our core values; whitherto for the customer requests the delivery of his/her service must be carefully screened, known and evaluate the safety measures therein.
               
               5. We thereunto encourage our service providers to constantly update his dashboard of where his/her prospective customer project his work to be done. You can also publicize it on your social 
           media channels, notify the nearby security agency before proceeding to the destination whitherto.

               Our company shall have a location tracking feature very soon to strengthen the security mindfulness of our subscribers.

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
