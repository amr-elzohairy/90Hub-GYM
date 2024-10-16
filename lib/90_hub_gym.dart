import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/routing/app_router.dart';
import 'package:hubmaster/core/themes/app_colors.dart';

class HubGym extends StatelessWidget {
  const HubGym({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            title: '90-HUB-GYM',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData.dark().copyWith(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              textTheme: TextTheme(
                displayMedium: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IntegralCF',
                  color: Colors.white,
                ),
                displaySmall: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontFamily: 'IntegralCF',
                ),
                displayLarge: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'IntegralCF',
                ),
                titleSmall: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                ),
              ),
              scaffoldBackgroundColor: AppColors.scaffoldBgColor,
            ),
          );
        });
  }
}
