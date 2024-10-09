import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/themes/app_colors.dart';

class GenderOption extends StatelessWidget {
  final String gender;
  final bool isSelected;
  final IconData iconData;

  const GenderOption(
      {super.key,
      required this.gender,
      required this.isSelected,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 120.h,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.darkRed : const Color(0xff2C2C2E),
        shape: BoxShape.circle,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 60,
            color: Colors.white,
          ),
          verticalSpace(10),
          Text(
            gender,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
