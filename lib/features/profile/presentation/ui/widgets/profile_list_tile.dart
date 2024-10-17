import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          trailing: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color(0xffE5E5E5),
              size: 22,
            ),
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                fontFamily: "Open Sans"),
          ),
        ),
        Container(
          height: 1.h,
          width: 300,
          color: const Color(0xFF2C2C2E),
        ),
      ],
    );
  }
}
