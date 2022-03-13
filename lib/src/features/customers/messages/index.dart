import 'package:Skill4Cash/src/core/model/message_model.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

import 'components/index_msg.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(kPad),
              decoration: BoxDecoration(
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFEEEEEE),
                    spreadRadius: 10,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Messages",
                        style: bodyNormalText(context).copyWith(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                    kSmallVerticalSpacing,
                    Container(
                      height: 50
                      ,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search messages",
                            hintStyle: labelText(context).copyWith(fontSize: 14),
                            border: OutlineInputBorder()),
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: conversationmessageList.length,
                  itemBuilder: (context, index) => MessageIndex(
                        dp: conversationmessageList[index].image,
                        name: conversationmessageList[index].name,
                        message: conversationmessageList[index].message,
                        time: conversationmessageList[index].message,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
