import 'package:Skill4Cash/src/core/model/message_model.dart';
import 'package:Skill4Cash/src/core/utilities/app_spacing.dart';
import 'package:flutter/material.dart';

import 'chat_input_field.dart';
import 'message.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: kPad),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: demeChatMessages[index]),
            ),
          ),
        ),
        
        ChatInputField(),
      ],
    );
  }
}
