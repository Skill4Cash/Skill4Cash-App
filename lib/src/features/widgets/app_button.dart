import 'package:flutter/material.dart';

import '../../core/utilities/constants.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;
  final Color textColor;
  final bool isLoading;
  final String? label;
  final double? size;
  final EdgeInsets padding;

  const AppButton({
    Key? key,
    this.onPressed,
    this.color,
    this.textColor = Colors.white,
    this.isLoading = false,
    this.padding = const EdgeInsets.symmetric(vertical: 16),
    @required this.label, this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: isLoading ? null : onPressed,
      color: color ?? null,
      textColor: textColor,
      padding: padding,
      child: Text(
        label!,
        style: TextStyle(fontSize: size ?? 16),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: kPrimaryColor)),
    );
  }
}
