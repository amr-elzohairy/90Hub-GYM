import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/routing/app_router.dart';
import 'package:hubmaster/features/user_infos/ui/widgets/next_and_back_row.dart';
import 'package:hubmaster/features/user_infos/ui/widgets/weight_slider.dart';

class WeightSelection extends StatelessWidget {
  const WeightSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 60.h),
          child: Column(
            children: [
              Text(
                "WHAT’S YOUR WEIGHT?",
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "YOU CAN ALWAYS CHANGE THIS LATER",
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
              verticalSpace(200),
              const WeightSlider(),
              verticalSpace(200),
              const NextAndBackRow(
                route: AppRouter.kAgeSelection,
              )
            ],
          ),
        ),
      ),
    );
  }
}
