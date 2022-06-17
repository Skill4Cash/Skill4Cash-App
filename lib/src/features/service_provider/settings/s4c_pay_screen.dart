import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utilities/app_textstyle.dart';
import '../../../core/utilities/constants.dart';
import '../../widgets/widgets.dart';

class S4CSubPayScreen extends StatelessWidget {
  const S4CSubPayScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kSmallVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Plan", style: heading1(context).copyWith(fontSize: 16),),
                  TextButton(onPressed: (){}, child: Text("Change plan", style: bodySmallText(context).copyWith(color: kPrimaryColor, decoration: TextDecoration.underline),)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: kPad),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/images/pay.png"), fit: BoxFit.cover)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(child: Text("Skill4Cash standard subscription", style: bodyNormalText(context).copyWith(color: kWhiteColor),),),
                            Text("30days", style: bodyNormalText(context).copyWith(color: kWhiteColor, fontSize: 18),)
                          ],
                        ),
                        kTinyVerticalSpacing,
                        Row(
                          children: [
                            Expanded(child: Text("1 Premium Account", style: bodySmallText(context).copyWith(color: kWhiteColor),),),
                            Text("For 50000.00 NGN", style: bodyNormalText(context).copyWith(color: kWhiteColor),)
                          ],
                        ),
                        kSmallVerticalSpacing,
                        Divider(color: kWhiteColor,),
                        kTinyVerticalSpacing,
                         Row(
                          children: [
                            Expanded(child: Text("Starting Today", style: bodySmallText(context).copyWith(color: kWhiteColor, fontSize: 16),),),
                            Text("5000 NGN for 30days", style: bodyNormalText(context).copyWith(color: kWhiteColor),)
                          ],
                        ),
                        kTinyVerticalSpacing,
                        Text("01-12-12", style: bodyTinyText(context).copyWith(color: kWhiteColor),),
                        kTinyVerticalSpacing,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("You will next be billed on 01-01-2022", style: bodyTinyText(context).copyWith(color: kWhiteColor),),
                            kSmallVerticalSpacing,
                            Text("Cancel anytime. Offer terms apply", style: bodyTinyText(context).copyWith(color: kWhiteColor),),
                            kSmallVerticalSpacing,
                            Text("We’ll remind you 7 days before you get charged", style: bodyTinyText(context).copyWith(color: kWhiteColor),),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            kLargeVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Text("Credit or debit card", style: bodyNormalText(context).copyWith(fontSize: 18,),),
            ),
            kSmallVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Row(
                children: [
                  Image(image: AssetImage("assets/images/master_card.png")),
                  kTinyHorizontalSpacing,
                  Image(image: AssetImage("assets/images/master_card.png")),
                ],
              ),
            ),
            kSmallVerticalSpacing,
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Text("Payment details", style: bodyNormalText(context).copyWith(fontSize: 16,),),
            ),
            kSmallVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Column(
                children: [
                  AppTextField(
                  title: "",
                  hintText: "Card Number",
                ),
                kSmallVerticalSpacing,
                Row(
                  children: [
                    Expanded(child:  AppTextField(
                  title: "",
                  hintText: "Expiry Date",
                ),),
                kSmallHorizontalSpacing,
                    Expanded(child:  AppTextField(
                  title: "",
                  hintText: "CVV",
                ),)
                  ],
                )
                ],
              ),
            ),
            kLargeVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Text("You hereby authorize SKILL4CASH to charge you automaticallly every month until you cancel your subscription. Full terms and instruction on how to cancel are available here", style: bodyTinyText(context),),
            ),
            kSmallVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Container(
                width: double.infinity,
                child: AppButton(
                  label: "CONFIRM",
                  color: kPrimaryColor,
                  onPressed: () {
                    
                  },
                ),
              ),
            ),


          ],
        ),
      )
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      leading: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: kTextColor,
          size: 16,
        ),
      ),
      backgroundColor: Colors.white,
      title: Text("S4C Subscription Plan",
          style: bodyNormalText(context)
              .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
      centerTitle: true,
    );
  }

}