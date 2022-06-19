import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:Skill4Cash/src/core/utilities/validation_mixin.dart';
import 'package:Skill4Cash/src/features/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _addDscCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void onSelected(int value) {
      switch (value) {
        case 1:
          _showScheduleModal(context, _titleController, _addDscCtrl);
          // Navigator.pushNamed(context, ServiceProviderRoutes.spPickDate);
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
                                  child: Text('Schedule appointment'),
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

  void _showScheduleModal(BuildContext context, TextEditingController titleCtrl,
      TextEditingController addDescCtrl) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      )),
      builder: (ctx) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Schedule appointment',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kTinyVerticalSpacing,
              Text(
                'Wonderous Creation Clothiers',
                style: TextStyle(
                  fontSize: 14,
                  color: kPrimaryColor,
                ),
              ),
              kLargeVerticalSpacing,
              Row(
                children: [
                  Icon(
                    Icons.alarm,
                    size: 12,
                    color: kPrimaryColor,
                  ),
                  kSmallHorizontalSpacing,
                  Expanded(
                      child: Text(
                    'Tuesday, 27 Nov',
                    style: bodySmallText(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  )),
                  Text(
                    '14:00 -15:00',
                    style: bodySmallText(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              kMediumVerticalSpacing,
              AppTextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: titleCtrl,
                validator: (value) => context.validateFieldNotEmpty(value),
                hintText: "Title",
              ),
              kMediumVerticalSpacing,
              AppTextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: titleCtrl,
                validator: (value) => context.validateFieldNotEmpty(value),
                hintText: "Add description",
                maxLines: 5,
              ),
              kLargeVerticalSpacing,
              AppButton(
                color: kPrimaryColor,
                label: "SCHEDULE",
                onPressed: () async {
                  _showScheduleDetailsModal(context);
                },
              ),
            ],
          ),
        );
      },
    );
    // builder should return the widget that would be in the modal sheet
  }
  void _showScheduleDetailsModal(BuildContext context, ) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      )),
      builder: (ctx) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Schedule details',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kLargeVerticalSpacing,
              Row(
                children: [
                  Icon(
                    Icons.message,
                    size: 12,
                    color: kPrimaryColor,
                  ),
                  kSmallHorizontalSpacing,
                  Expanded(
                      child: Text(
                    'Message aapointment at agungi',
                    style: bodySmallText(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              kMediumVerticalSpacing,
              Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 12,
                    color: kTextColor,
                  ),
                  kSmallHorizontalSpacing,
                  Expanded(
                      child: Text(
                    'Sammy Droid',
                    style: bodySmallText(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              kMediumVerticalSpacing,
              Row(
                children: [
                  Icon(
                    Icons.alarm,
                    size: 12,
                    color: kPrimaryColor,
                  ),
                  kSmallHorizontalSpacing,
                  Expanded(
                      child: Text(
                    'Tues, Nov 27 - 14:00-15:00',
                    style: bodySmallText(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              kMediumVerticalSpacing,
              Row(
                children: [
                  Icon(
                    Icons.note,
                    size: 12,
                    color: kPrimaryColor,
                  ),
                  kSmallHorizontalSpacing,
                  Expanded(
                      child: Text(
                    'We can meet at the masive chicken outlet clost to the Buyrite mall',
                    style: bodySmallText(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              kMediumVerticalSpacing,
            ],
          ),
        );
      },
    );
    // builder should return the widget that would be in the modal sheet
  }
}
