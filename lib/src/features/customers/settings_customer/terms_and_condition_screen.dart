import 'package:Skill4Cash/src/core/utilities/app_colors.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:flutter/material.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: kBlackColor,
          ),
        ),
        title: Text(
          "Terms And Condition",
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
                """LoTerms and Conditions
Welcome to our App. We maintain this Mobile Application as a service to (skilled service providers) vocational experts and potential customers. 
By using our site, you are agreeing to comply with and be bound by the following terms of use. Please review the following terms carefully. 
If you do not agree to these terms, you should not use this site.

                  
                  Who may use this App?
This app is solely for the (skilled service providers) vocational providers or experts and potential customers. 
(Skilled Service Providers)  "Vocational Providers" in our term as Skill4cash are the people that are vocationally skilled and certified with the relevant knowledge, certificate and associates or associations. 
Examples are (but not limited to), furniture makers, carpenters, mechanics, tailors, shoemakers, hairdressers, bricklayers, etc. While "potential customers" meant (in our own term), the people that are ready to patronize them making choices of their own of who is okay for them on our App.
When the "two parties" (the two parties mean a (skilled service provider)  vocational provider or expert and potential customer) come to an agreement, they are exclusively bound of their own (Agreement and Negotiation) term of services, not ours (out term of service).

                  
                  
                  
                  
                  1. Acceptance of Agreement.
You agree to the terms and conditions outlined in this Terms of Use Agreement ("Agreement") with respect to our App (the "App"). 
This Agreement constitutes the entire and only agreement between us and you, and supersedes all prior or contemporaneous agreements, representations, warranties and understandings with respect to the App, the content, products or services provided by or through the App, and the subject matter of this Agreement. 
This Agreement may be amended at any time by us from time to time without specific notice to you. The latest Agreement will be posted on the App, and you should review this Agreement prior to using the App every time .

                  
                  
                  
                  2. Copyright.
The content, organization, graphics, design, compilation, magnetic translation, digital conversion and other matters related to the App are protected under applicable copyrights, trademarks and other proprietary (including but not limited to intellectual property) rights. 
The copying, redistribution, use or publication by you of any such matters or any part of the App, except as allowed by us, is strictly prohibited. You do not acquire ownership rights to any content, document or other materials viewed through the App. 
The posting of information or materials on the App does not constitute a waiver of any right in such information and materials.

                  
                  
                  
                  3. Service Marks
Products, services and names mentioned on the App may be trademarks of their respective owners.
4. Limited Right to Use
The viewing, printing or downloading of any content, graphic, form or document from the App grants you only a limited, non-exclusive license for use solely by you for your own personal use and not for republication, distribution, assignment, sublicense, sale, preparation of derivative works or other use. 
No part of any content, form or document may be reproduced in any form or incorporated into any information retrieval system, electronic or mechanical, other than for your personal use (but not for resale or redistribution).

                  


5. Editing, Deleting and Modification
We reserve the right in our sole discretion to edit, delete or modify any documents, information or other content appearing on the App.
6. Indemnification
You agree to indemnify, defend and hold us and our partners, attorneys, staff, advertisers, product and service providers, and affiliates (collectively and individually, "Affiliated Parties") harmless from any liability, loss, claim and expense, including reasonable attorney's fees, related to your violation of this Agreement or use of the App.
7. Non-transferable
Your right to use the App is not transferable. Any password or right given to you to obtain information or documents is not transferable. Especially the vocational experts (Skilled Service Providers), are not expected to transfer their right of using this App on anyone.




8. Disclaimer and Limits
THE INFORMATION FROM OR THROUGH THE APP ARE PROVIDED "AS-IS," "AS AVAILABLE," AND ALL WARRANTIES, EXPRESS OR IMPLIED, ARE DISCLAIMED (INCLUDING BUT NOT LIMITED TO THE DISCLAIMER OF ANY IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE). THE INFORMATION AND SERVICES MAY CONTAIN BUGS, ERRORS, PROBLEMS OR OTHER LIMITATIONS. 
WE AND OUR AFFILIATED PARTIES HAVE NO LIABILITY WHATSOEVER FOR YOUR USE OF ANY INFORMATION OR SERVICE. IN PARTICULAR, BUT NOT AS A LIMITATION THEREOF, WE AND OUR AFFILIATED PARTIES ARE NOT LIABLE FOR ANY INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING DAMAGES FOR LOSS OF BUSINESS, LOSS OF PROFITS, LITIGATION, OR THE LIKE), 
WHETHER BASED ON BREACH OF CONTRACT, BREACH OF WARRANTY, TORT (INCLUDING NEGLIGENCE), PRODUCT LIABILITY OR OTHERWISE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. THE NEGATION OF DAMAGES SET FORTH ABOVE ARE FUNDAMENTAL ELEMENTS OF THE BASIS OF THE BARGAIN BETWEEN US AND YOU. THIS SITE AND THE PRODUCTS, SERVICES, AND INFORMATION PRESENTED WOULD NOT BE PROVIDED WITHOUT SUCH LIMITATIONS. NO ADVICE OR INFORMATION, 
WHETHER ORAL OR WRITTEN, OBTAINED BY YOU FROM US THROUGH THE SITE SHALL CREATE ANY WARRANTY, REPRESENTATION OR GUARANTEE NOT EXPRESSLY STATED IN THIS AGREEMENT. WE DO NOT PROVIDE LEGAL ADVICE NOR ENTER INTO ANY ATTORNEY-CLIENT RELATIONSHIP.

ALL RESPONSIBILITY OR LIABILITY FOR ANY DAMAGES CAUSED BY VIRUSES CONTAINED WITHIN THE ELECTRONIC FILE CONTAINING THE FORM OR DOCUMENT IS DISCLAIMED. WE WILL NOT BE LIABLE TO YOU FOR ANY INCIDENTAL, SPECIAL OR CONSEQUENTIAL DAMAGES OF ANY KIND THAT MAY RESULT FROM USE OF OR INABILITY TO USE OUR SITE. OUR MAXIMUM LIABILITY TO YOU UNDER ALL CIRCUMSTANCES WILL BE EQUAL TO THE PURCHASE PRICE YOU PAY FOR ANY SERVICES OR INFORMATION.
  
  
  
  
  9. Use of Information.
We reserve the right, and you authorize us, to the use and assignment of all information regarding App uses by you and all information provided by you in any manner consistent with our Privacy Policy. All remarks, suggestions, ideas, graphics, or other information communicated by you to us through the Site (collectively, the "Submission") will forever be the property of Skill4cash Services Portal. 
Skill4cash Services Portal will not be required to treat any Submission as confidential, and will not be liable for any ideas for its business (including without limitation, product, service or advertising ideas) and will not incur any liability as a result of any similarities that may appear in future Skill4Cash Services Portal products, services or operations. Without limitation, 
Skill4cash Services Portal will have exclusive ownership of all present and future existing rights to the Submission of every kind and nature everywhere. Skill4cash Services Portal will be entitled to use the Submission for any commercial or other purpose whatsoever, without compensation to you or any other person sending the Submission. 
You acknowledge that you are responsible for whatever material you submit, and you, not Skill4cash Services Portal, have full responsibility for the message, including its legality, reliability, appropriateness, originality, and copyright.
         
         
         
         
         10. Third-Party Services
We may allow access to or advertise third-party product or service providers ("Merchants") from which you may purchase certain goods or services. You understand that we do not operate or control the products or services offered by Merchants. Merchants are responsible for all aspects of order processing, fulfilment, billing and customer service. We are not a party to the transactions entered into between you and Merchants. 
You agree that use of such Merchants is AT YOUR SOLE RISK AND IS WITHOUT WARRANTIES OF ANY KIND BY US, EXPRESSED, IMPLIED OR OTHERWISE INCLUDING WARRANTIES OF TITLE, FITNESS FOR PURPOSE, and MERCHANTABILITY OR NON-INFRINGEMENT. UNDER NO CIRCUMSTANCES ARE WE LIABLE FOR ANY DAMAGES ARISING FROM THE TRANSACTIONS BETWEEN YOU AND MERCHANTS OR FOR ANY INFORMATION APPEARING ON MERCHANT SITES OR ANY OTHER SITE LINKED TO OUR SITE.
       
       
       
       
       11. Third-Party Merchant Policies.
All rules, policies (including privacy policies) and operating procedures of Merchants will apply to you while on such sites. We are not responsible for information provided by you to Merchants. We and the Merchants are independent contractors and neither party has authority to make any representations or commitments on behalf of the other.
12. Affiliate Disclaimer
Skill4cash is not affiliated to the vocational experts and the potential customers of the experts in any way. Hence, we are not responsible for any transaction, fault, mistake, error, fraud, disappointment or misuse that might occur in the process of the two parties. 
But we shall put in all our best to make sure that genuineness of all our (Skilled Service Providers) skill providers/experts are well verified before approval to display their identity on the App.




     13. Negotiation
Any negotiation made between the two parties are not in any way of our influence, consultation or recommendation. We don't have any hand in any agreement made by the parties. 
However, we make the strategy of tracking the (Skilled Service Providers) vocational experts on our App by reviews or comments from the potential customers who eventually became their paying customers on our App.
14. Deletion of Account
We own the right to delete or query any user of our App, if through our silent investigation, we notice that the user is transacting illegally on our App.

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
