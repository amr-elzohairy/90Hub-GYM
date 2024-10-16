import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/routing/app_router.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/features/user_infos/presentation/ui/widgets/next_and_back_row.dart';

class HeightSelection extends StatefulWidget {
  const HeightSelection({super.key});

  @override
  State<HeightSelection> createState() => _HeightSelectionState();
}

class _HeightSelectionState extends State<HeightSelection> {
  int selectedHeight = 100;

  final List<int> heightsList = List.generate(101, (index) => 100 + index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 60.h),
          child: Column(
            children: [
              Text(
                "WHAT’S YOUR HEIGHT?",
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
                        setState(
                          () {
                            selectedHeight = heightsList[index];
                          },
                        );
                      },
                      childDelegate: ListWheelChildBuilderDelegate(
                        childCount: heightsList.length,
                        builder: (context, index) {
                          print(index);
                          print(selectedHeight);
                          if (selectedHeight == heightsList[index]) {
                            return Text(
                              '${heightsList[index]}',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(fontSize: 48, color: Colors.white),
                            );
                          } else if ((selectedHeight - heightsList[index])
                                  .abs() ==
                              1) {
                            return textOpacity(index, context, 0.7);
                          } else if ((selectedHeight - heightsList[index])
                                  .abs() ==
                              2) {
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
                    right: 70.w,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.darkRed,
                      ),
                      width: 200.w,
                      height: 4.h,
                    ),
                  ),
                  Positioned(
                    top: 150.h,
                    right: 75.w,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.darkRed,
                      ),
                      width: 190.w,
                      height: 4.h,
                    ),
                  ),
                  Positioned(
                    top: 200.h,
                    right: 70.w,
                    child: Text(
                      'cm',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  )
                ],
              ),
              verticalSpace(100),
              const NextAndBackRow(route: AppRouter.kGoalSeleciton),
            ],
          ),
        ),
      ),
    );
  }

  Text textOpacity(int index, BuildContext context, double opacity) {
    return Text(
      '${heightsList[index]}',
      style: Theme.of(context).textTheme.displayLarge!.copyWith(
            fontSize: 48,
            color: Colors.white.withOpacity(opacity),
          ),
    );
  }
}
