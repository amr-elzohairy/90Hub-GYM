import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/routing/app_router.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/features/user_infos/ui/widgets/next_and_back_row.dart';

class GoalSelection extends StatefulWidget {
  const GoalSelection({super.key});

  @override
  State<GoalSelection> createState() => _GoalSelectionState();
}

class _GoalSelectionState extends State<GoalSelection> {
  String selectedGoal = 'Gain Weight';
  List goalsList = [
    'Gain Weight',
    'Lose Weight',
    'Get fitter',
    'Gain More Flexible'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 60.h),
          child: Column(
            children: [
              Text(
                "WHAT’S YOUR GOAL?",
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "THIS HELPS US CREATE YOUR PERSONALIZED PLAN",
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
              verticalSpace(25),
              Stack(
                children: [
                  SizedBox(
                    height: 400.h,
                    child: ListWheelScrollView.useDelegate(
                      // useMagnifier: true,
                      magnification: 1.1,
                      itemExtent: 70,
                      physics: const FixedExtentScrollPhysics(),
                      onSelectedItemChanged: (index) {
                        setState(() {
                          selectedGoal = goalsList[index];
                        });
                      },
                      childDelegate: ListWheelChildBuilderDelegate(
                        childCount: goalsList.length,
                        builder: (context, index) {
                          return selectedGoal == goalsList[index]
                              ? Text(
                                  '${goalsList[index]}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'OpenSans',
                                      ),
                                )
                              : Text(
                                  '${goalsList[index]}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'OpenSans',
                                        color: Colors.grey,
                                      ),
                                );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200.h,
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
                    top: 140.h,
                    right: 75.w,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.darkRed,
                      ),
                      width: 190.w,
                      height: 4.h,
                    ),
                  ),
                ],
              ),
              verticalSpace(100),
              const NextAndBackRow(route: AppRouter.kLoginView),
            ],
          ),
        ),
      ),
    );
  }
}
