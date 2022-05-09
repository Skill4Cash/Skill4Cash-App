import 'package:Skill4Cash/src/core/model/message_model.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.symmetric(
        horizontal: kPad * 0.75,
        vertical: kPad - 5,
      ),
      decoration: BoxDecoration(
          color: message!.isSender ? kPrimaryColor : darkPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft:
                message!.isSender ? Radius.circular(30) : Radius.circular(0),
            bottomRight:
                message!.isSender ? Radius.circular(0) : Radius.circular(30),
          )),
      child: Text(
        message!.text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
