import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/routing/app_router.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/features/user_infos/ui/widgets/next_and_back_row.dart';

class ActivitySelection extends StatefulWidget {
  const ActivitySelection({super.key});

  @override
  State<ActivitySelection> createState() => _ActivitySelectionState();
}

class _ActivitySelectionState extends State<ActivitySelection> {
  String selectedActivity = 'Rookie';
  List activityList = ['Rookie', 'Beginner', 'Intermediate', 'Advance'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 60.h),
          child: Column(
            children: [
              Text(
                "YOUR REGULAR PHYSICAL ACTIVITY LEVEL?",
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
                      useMagnifier: true,
                      magnification: 1.2,
                      itemExtent: 50,
                      physics: const FixedExtentScrollPhysics(),
                      onSelectedItemChanged: (index) {
                        setState(
                          () {
                            selectedActivity = activityList[index];
                          },
                        );
                      },
                      childDelegate: ListWheelChildBuilderDelegate(
                        childCount: activityList.length,
                        builder: (context, index) {
                          return  selectedActivity == activityList[index]
                              ? Text(
                                  '${activityList[index]}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'OpenSans',
                                      ),
                                )
                              : Text(
                                  '${activityList[index]}',
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
                    top: 210.h,
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
                    top: 160.h,
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
              const NextAndBackRow(route: AppRouter.kActivitySelection),
            ],
          ),
        ),
      ),
    );
  }
}
