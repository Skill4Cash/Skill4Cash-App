import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../../../core/model/rating_model.dart';
import '../../../core/utilities/app_textstyle.dart';
import 'components/rating_card.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(child:  ListView.builder(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ratingData.length,
                itemBuilder: (_, index){
                return BuildRating(image: ratingData[index].image, name: ratingData[index].text, comment: ratingData[index].comment,
                shadowColor: Colors.black12,);
              })),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      leading:InkWell(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: kTextColor,
          size: 16,
        ),
      ),
      backgroundColor: Colors.white,
      title: Text("Ratings & Review",
          style: bodyNormalText(context)
              .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
      centerTitle: true,
    );
  }
}