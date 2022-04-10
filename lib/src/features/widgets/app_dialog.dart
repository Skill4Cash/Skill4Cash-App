import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  final Widget child;
  const AppDialog({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Dialog(
        insetPadding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: child,
      ),
    );
  }
}
