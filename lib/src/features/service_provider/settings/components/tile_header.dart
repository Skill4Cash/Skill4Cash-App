import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
import 'package:flutter/material.dart';

class TileHeader extends StatelessWidget {
  final String text;
  const TileHeader({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPad),
      child: Text(
        text,
        style: bodyNormalText(context)
            .copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
