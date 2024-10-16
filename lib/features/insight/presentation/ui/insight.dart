import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/core/widgets/custom_calender.dart';
import 'package:hubmaster/core/widgets/check_box.dart';

class Insight extends StatelessWidget {
  const Insight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCalender(),
            verticalSpace(20),
            ClipOval(
              child: Container(
                height: 200.h,
                width: 200.w,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.red,
                      Color(0xFFD0FD3E),
                      Color(0xff2C2C2E),
                      Color(0xff2C2C2E),
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(4.r),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.scaffoldBgColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '625',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    fontSize: 36.sp,
                                  ),
                            ),
                            horizontalSpace(7),
                            Padding(
                              padding: EdgeInsets.only(top: 15.h),
                              child: Text(
                                'cal',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(fontSize: 15.sp),
                              ),
                            )
                          ],
                        ),
                        verticalSpace(10),
                        Text(
                          'Active Calories',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        verticalSpace(15),
                        GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/svgs/archiveadd.svg",
                            height: 45,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            verticalSpace(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  ClipOval(
                    child: Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF951025),
                            Color(0xFF951025),
                            Color(0xFF951025),
                            Color(0xff2C2C2E),
                            Color(0xff2C2C2E),
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.r),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.scaffoldBgColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Steps',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              Text(
                                '6540',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                      fontSize: 16.sp,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  horizontalSpace(15),
                  ClipOval(
                    child: Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.red,
                            Color(0xff2C2C2E),
                            Color(0xff2C2C2E),
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.r),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.scaffoldBgColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 12.h),
                                child: Text(
                                  "Water",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 10,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '3.5',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                          fontSize: 18.sp,
                                        ),
                                  ),
                                  horizontalSpace(7),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: Text(
                                      'L',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(fontSize: 12.sp),
                                    ),
                                  )
                                ],
                              ),
                              verticalSpace(8),
                              GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "assets/svgs/archiveadd.svg",
                                  height: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  horizontalSpace(15),
                  ClipOval(
                    child: Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffE79332),
                            Color(0xffE79332),
                            Color(0xffE79332),
                            Color(0xff2C2C2E),
                            Color(0xff2C2C2E),
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.r),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.scaffoldBgColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 12.h),
                                child: Text(
                                  "Heart",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 10,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '72',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                          fontSize: 18.sp,
                                        ),
                                  ),
                                  horizontalSpace(7),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: Text(
                                      'pbm',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(fontSize: 12.sp),
                                    ),
                                  )
                                ],
                              ),
                              verticalSpace(8),
                              GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "assets/svgs/archiveadd.svg",
                                  height: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Finished Workout",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontFamily: "Open sans",
                              ),
                    ),
                  ),
                  verticalSpace(10),
                  Container(
                    width: double.infinity,
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff2C2C2E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.h, top: 16.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Flash Cycling",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: "Open sans",
                                      fontSize: 20.sp,
                                    ),
                              ),
                              Text(
                                "10:00",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontSize: 14.sp,
                                    )
                                    .copyWith(color: AppColors.darkRed),
                              ),
                            ],
                          ),
                        ),
                        const CheckBox(),
                      ],
                    ),
                  ),
                  verticalSpace(15),
                  Container(
                    width: double.infinity,
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff2C2C2E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.h, top: 16.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Stability Training",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: "Open sans",
                                      fontSize: 20.sp,
                                    ),
                              ),
                              Text(
                                "10:00",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontSize: 14.sp,
                                    )
                                    .copyWith(color: AppColors.darkRed),
                              ),
                            ],
                          ),
                        ),
                        const CheckBox(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
