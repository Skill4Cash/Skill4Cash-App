import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen();
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
          "Privacy Policy",
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
                """Our Privacy Policy, as it may change from time to time, is a part of this Agreement.
Payments
You represent and warrant that if you are purchasing something from us (and the only thing to purchase from us now is subscription of membership, but there will additional very soon)
Make sure: 
(i) any credit information you supply is true and complete, 
(ii) charges incurred by you will be honoured by your credit card company, and
 (iii) you will pay the charges incurred by you at the posted prices, including any applicable taxes.

                  
                  Identity of Users
Displaying of the identities of our users is required and important, only on our App and our Site. 
As a company, we don't and won't give out the identity of our users to any other platforms, except for advertisement purpose, recognition purpose or disclaimer reason. 
And before this can be done, we will firstly notify the user and have is (his/her)  consent before proceeding in the identification of his/her in our advertising purposes and recognition. 
Please note that we won't wait for the consent of our users before proceeding in the process. 
Also, be informed that no prior notice will be given before we reveal our user's identity ONLY on our Site and App, for connection purposes (with parties).

                  
                  
                  
                  
                  Securities Laws
This App may include statements concerning our operations, prospects, strategies, financial condition, future economic performance and demand for our services, as well as our intentions, plans and objectives (particularly with respect to service offerings), that are forward-looking statements. 
These statements are based upon a number of assumptions and estimates which are subject to significant uncertainties, many of which are beyond our control. 
When used on our Site, words like "anticipates," "expects," "believes," "estimates," "seeks," "plans," "intends," "will" and similar expressions are intended to identify forward-looking statements designed to fall within securities law safe harbours (harbors) for forward-looking statements. 
The Site and the information contained herein does not constitute an offer or a solicitation of an offer for sale of any securities. None of the information contained herein is intended to be, and shall not be deemed to be, incorporated into any of our securities-related filings or documents.
                  
          
          
          
          
          Links to Other Web Sites.
The App contains links to other web sites. We are not responsible for the content, accuracy or opinions express in such web sites, and such web sites are not investigated, monitored or checked for accuracy or completeness by us. 
Inclusion of any linked web site on our App does not imply approval or endorsement of the linked web site by us. If you decide to leave our App and access these third-party app or sites, you do so at your own risk.





        Copyrights and Copyright Agents
We respect the intellectual property of others, and we ask you to do the same. If you believe that your work, content or creativity has been copied in a way that constitutes copyright infringement, please provide our Copyright Agent the following information: 
(a) An electronic or physical signature of the person authorized to act on behalf of the owner of the copyright interest;
(b) A description of the copyrighted work that you claim has been infringed; 
(c) A description of where the material that you claim is infringing is located on the Site; 
(d) Your address, telephone number, and email address;
(e) A statement by you that you have a good faith belief that the disputed use is not authorized by the copyright owner, its agent, or the law; and
(f) A statement by you, made under penalty of perjury, that the above information in your Notice is accurate and that you are the copyright owner or authorized to act on the copyright owner's behalf. 





Proposed Service Offerings
All descriptions of proposed products and services are based on assumptions subject to change and you should not rely on the availability or functionality of products or services until they are actually offered through the App. 
We reserve the right in its sole discretion to determine how registration and other promotions will be awarded. 
This determination includes, without limitation, the scope, nature and timing of all such awards.





Information and Press Releases
The App contains information and press releases about us. While this information was believed to be accurate as of the date prepared, we disclaim any duty or obligation to update this information or any press releases. 
Information about companies other than ours contained in the press release or otherwise, should not be relied upon as being provided or endorsed by us.

                  """,
                style: bodyNormalText(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
