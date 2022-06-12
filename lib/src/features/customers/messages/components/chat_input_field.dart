import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  @override
  Widget build(BuildContext context) {
    void onSelected(int value) {
      switch (value) {
        case 1:
          Navigator.pushNamed(
              context, ServiceProviderRoutes.spSchedulePickDate);
          break;
        case 2:
          break;
        case 3:
          break;
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kPad,
        vertical: kPad / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kPad - 5,
                ),
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(40),
                    ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Message",
                          suffixIcon: PopupMenuButton(
                            offset: Offset(0, 60),
                            onSelected: (int value) {
                              onSelected(value);
                            },
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  child: Text('Schedule a meet'),
                                  value: 1,
                                ),
                                PopupMenuItem(
                                  child: Text('Attach Pictures'),
                                  value: 2,
                                ),
                                PopupMenuItem(
                                  child: Text('Attach Documents'),
                                  value: 2,
                                ),
                              ];
                            },
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                  color: Colors.black12.withOpacity(0.4),
                                  width: 0.3)),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: darkPrimaryColor,
                          size: 30,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
