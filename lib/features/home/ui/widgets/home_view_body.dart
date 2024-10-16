import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/features/home/ui/widgets/buttons_row.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBgColor,
        elevation: 0,
        toolbarHeight: 60,
        actions: [
          ClipOval(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    "assets/images/chat.png",
                    height: 35,
                  ),
                ),
              ),
            ),
          ),
          ClipOval(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    "assets/images/notification.png",
                    height: 35,
                  ),
                ),
              ),
            ),
          )
        ],
        leadingWidth: 90,
        leading: ClipOval(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  "assets/images/dehazed.png",
                  width: 30,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 27,
          vertical: 5,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Sarah,",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontFamily: 'Inter',
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              verticalSpace(10),
              Text(
                "Good morning.",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w100),
              ),
              verticalSpace(45),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today Workout Plan",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Open Sans'),
                  ),
                  GestureDetector(
                    child: Text(
                      "Custom Plan",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: AppColors.darkRed,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Open Sans'),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              verticalSpace(20),
              InkWell(
                onTap: () {
                  // Add your desired action here
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(17),
                        child: SizedBox(
                          width: double.infinity,
                          height: 200.h,
                          child: Image.asset(
                            'assets/images/workoutplan.png',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Day 01 - Warm Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '07:00 - 08:00 AM',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(50),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today Nutrition Plan",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Open Sans'),
                  ),
                  GestureDetector(
                    child: Text(
                      "Custom Plan",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: AppColors.darkRed,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Open Sans'),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const ButtonsRow(),
              verticalSpace(30),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(17),
                      child: Container(
                        width: double.infinity,
                        height: 200.h,
                        child: Image.asset(
                          'assets/images/dietPlan.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      left: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Day 01 - Healthy Breakfast',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(10),
                          const Text(
                            '08:00 - 09:00 AM',
                            style: TextStyle(
                              color: AppColors.darkRed,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}

