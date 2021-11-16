import 'package:flutter/material.dart';

import '../../core/utilities/constants.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;
  final Color textColor;
  final bool isLoading;
  final String? label;
  final EdgeInsets padding;

  const AppButton({
    Key? key,
    this.onPressed,
    this.color,
    this.textColor = Colors.white,
    this.isLoading = false,
    this.padding = const EdgeInsets.symmetric(vertical: 16),
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: isLoading ? null : onPressed,
      color: color,
      textColor: textColor,
      padding: padding,
      child: Text(
        label!,
        style: TextStyle(fontSize: 24),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: kPrimaryColor)),
    );
  }
}
