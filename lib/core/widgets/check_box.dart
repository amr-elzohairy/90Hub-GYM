import 'package:flutter/material.dart';
import 'package:hubmaster/core/themes/app_colors.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      value: isChecked,
      activeColor: AppColors.darkRed,
      onChanged: (value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}
