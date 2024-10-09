import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/routing/app_router.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/features/user_infos/ui/widgets/next_and_back_row.dart';

import '../../../core/helpers/spacing.dart';

class AgeSelection extends StatefulWidget {
  const AgeSelection({super.key});

  @override
  State<AgeSelection> createState() => _AgeSelectionState();
}

class _AgeSelectionState extends State<AgeSelection> {
  int selectedAge = 15;

  final List<int> ages = List.generate(86, (index) => 15 + index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 60.h),
          child: Column(
            children: [
              Text(
                "HOW OLD ARE YOU?",
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "THIS HELPS US CREATE YOUR PERSONALIZED PLAN",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                    ),
                textAlign: TextAlign.center,
              ),
              verticalSpace(25),
              Stack(
                children: [
                  SizedBox(
                    height: 400.h,
                    child: ListWheelScrollView.useDelegate(
                      useMagnifier: true,
                      magnification: 1.5,
                      itemExtent: 70,
                      physics: const FixedExtentScrollPhysics(),
                      onSelectedItemChanged: (index) {
                        setState(() {
                          selectedAge = ages[index];
                        });
                      },
                      childDelegate: ListWheelChildBuilderDelegate(
                        childCount: ages.length,
                        builder: (context, index) {
                          if (selectedAge == ages[index]) {
                            return textOpacity(index, context, 1);
                          } else if ((selectedAge - ages[index]).abs() == 1) {
                            return textOpacity(index, context, 0.7);
                          } else if ((selectedAge - ages[index]).abs() == 2) {
                            return textOpacity(index, context, 0.5);
                          } else {
                            return textOpacity(index, context, 0.3);
                          }
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: 230.h,
                    right: 105.w,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.darkRed,
                      ),
                      width: 130.w,
                      height: 4.h,
                    ),
                  ),
                  Positioned(
                    top: 150.h,
                    right: 105.w,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.darkRed,
                      ),
                      width: 130.w,
                      height: 4.h,
                    ),
                  )
                ],
              ),
              verticalSpace(100),
              const NextAndBackRow(route: AppRouter.kHeightSelection),
            ],
          ),
        ),
      ),
    );
  }

  Text textOpacity(int index, BuildContext context, double opacity) {
    return Text(
      '${ages[index]}',
      style: Theme.of(context)
          .textTheme
          .displayLarge!
          .copyWith(fontSize: 48, color: Colors.white.withOpacity(opacity)),
    );
  }
}
