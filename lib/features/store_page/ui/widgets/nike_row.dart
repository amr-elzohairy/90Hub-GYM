import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubmaster/core/helpers/spacing.dart';

class NikeRow extends StatelessWidget {
  const NikeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50.h,
          width: 100.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/Nike.png"))),
        ),
        horizontalSpace(10),
        Container(
          height: 45.h,
          width: 65.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: const Color(0xff2C2C2E),
          ),
          child: Center(
            child: SvgPicture.asset(
              "assets/svgs/Bird.svg",
              height: 14.h,
            ),
          ),
        ),
        horizontalSpace(10),
        Container(
          height: 45.h,
          width: 65.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: const Color(0xff2C2C2E),
          ),
          child: Center(
            child: SvgPicture.asset(
              "assets/svgs/wifi.svg",
            ),
          ),
        ),
        horizontalSpace(10),
        Container(
          height: 45.h,
          width: 65.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: const Color(0xff2C2C2E),
          ),
          child: Center(
            child: SvgPicture.asset(
              "assets/svgs/manJump.svg",
            ),
          ),
        ),
      ],
    );
  }
}
