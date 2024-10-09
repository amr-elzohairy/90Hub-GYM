import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.size,
      this.onPressed,
      this.buttonWidth,
      this.buttonHeight});
  final String text;
  final Size? size;
  final double? buttonWidth;
  final double? buttonHeight;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(buttonWidth?.w ?? 50.w, buttonHeight ?? 52.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48.r),
        ),
        backgroundColor: AppColors.darkRed,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Image.asset('assets/images/Vector.png')
        ],
      ),
    );
  }
}
