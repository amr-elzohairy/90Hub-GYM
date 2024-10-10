import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/routing/app_router.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/core/widgets/custom_button.dart';
import 'package:hubmaster/core/widgets/custom_text_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: double.maxFinite,
                          child: ClipPath(
                            clipper: BottomBevelClipper(),
                            child: Image.asset(
                              "assets/images/signUp.png",
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
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 150.0.h, right: 80.w),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello champ,",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 32),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Text(
                                      "Enter your information below or\nlogin with another account",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                      // .copyWith(fontSize: 35),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(32),
                  CustomTextField(labelText: "Email"),
                  CustomTextField(labelText: "Password", isPassword: true),
                  CustomTextField(
                      labelText: "Password again", isPassword: true),
                  verticalSpace(50),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: 20.h, left: 210.w, right: 20.h),
                    child: CustomButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.kGenderSelection);
                        },
                        text: 'Sign up'),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0.w, top: 50.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GestureDetector(
                      child: Text(
                        "Login",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      onTap: () {
                        GoRouter.of(context)
                            .pushReplacement(AppRouter.kLoginView);
                      },
                    ),
                    horizontalSpace(30),
                    Column(
                      children: [
                        Text(
                          "Sign up",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        verticalSpace(10),
                        Container(
                          height: 3.0,
                          width: 60,
                          color: AppColors.darkRed,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0.h, right: 30.w),
                  child: Container(
                    width: 75.0.w,
                    height: 75.0.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 2.0),
                    ),
                    child: CircleAvatar(
                      radius: 75.0.r,
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          const AssetImage("assets/images/logo.png"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomBevelClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;
    final path = Path();
    path.lineTo(0, 0); // Start from top-left
    path.lineTo(width, 0); // Move to top-right corner
    path.lineTo(width, height * 0.75); // Move to bottom-right corner
    path.lineTo(0, height); // Clip the right side
    path.close(); // Complete the shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
