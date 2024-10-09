import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/themes/app_colors.dart';

class CustomIndicator extends StatelessWidget {
  CustomIndicator({super.key, required this.avtive});
  final bool avtive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: avtive ? AppColors.darkRed : Colors.grey,
      ),
      width: avtive ? 36 : 16,
      height: 5.h,
    );
  }
}
