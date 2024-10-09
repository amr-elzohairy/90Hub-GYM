import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/routing/app_routerr.dart';

import 'package:hubmaster/core/widgets/custom_button.dart';
import 'package:hubmaster/features/on_boarding/ui/widgets/bottom_bevel_clipper.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: ClipPath(
                        clipper: BottomBevelClipper(),
                        child: Image.asset(
                          'assets/images/Rectangle 6 (2).png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.black, Colors.black12],
                        ),
                      ),
                      width: double.maxFinite,
                      height: double.maxFinite,
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(100),
          Text(
            textAlign: TextAlign.center,
            'ACTION IS THE\nKEY TO ALL SUCCESS',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          verticalSpace(60),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.h),
            child: CustomButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kGenderSelection);
              },
              text: 'Start Now',
            ),
          ),
        ],
      ),
    );
  }
}
