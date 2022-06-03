import 'package:flutter/material.dart';

import '../../core/utilities/app_colors.dart';
import '../../core/utilities/app_textstyle.dart';

class AppDropDown extends StatelessWidget {
  final List<String> options;
  String? currentItem;
  AppDropDown({Key? key, required this.options, required this.currentItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        filled: true,

        fillColor: Colors.transparent,
        // hintText: hintText,
        hintStyle:
            labelText(context).copyWith(color: Colors.black38, fontSize: 14),
        // suffixIcon: suffixIcon,
        // prefixIcon: prefixIcon,
        contentPadding: EdgeInsets.all(16.0),
        border: OutlineInputBorder(),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFFF647C), width: 0.5),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFFF647C), width: 0.5),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE4ECF1), width: 0.5),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(5),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      value: currentItem,
      isDense: true,
      hint: Text("Select an option"),
      // validator: (value) => context.validateDropDown(value),
      onChanged: (newValue) {
        currentItem = newValue!;
      },
      items: options.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
