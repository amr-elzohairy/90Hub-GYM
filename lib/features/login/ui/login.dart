import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hubmaster/core/routing/app_router.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/core/widgets/custom_button.dart';
import 'package:hubmaster/core/widgets/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                    height: MediaQuery.of(context).size.height * 0.60,
                    child: Stack(
                      children: [
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return SizedBox(
                              width: constraints.maxWidth,
                              height: constraints.maxHeight,
                              child: ClipPath(
                                clipper: BottomBevelClipper(),
                                child: Image.asset(
                                  "assets/images/login.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          },
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
                            padding: const EdgeInsets.only(top: 150.0),
                            child: Text(
                              "Welcome back",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    fontSize: 36.sp,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  CustomTextField(labelText: "Email"),
                  CustomTextField(labelText: "Password", isPassword: true),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 35),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kForgotPassword);
                        },
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: AppColors.darkRed,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 200.w, right: 10.w, bottom: 20.h),
                    child: CustomButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.kHomeView);
                        },
                        text: 'Login'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Login",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 3.0,
                          width: 50,
                          color: AppColors.darkRed,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      child: Text(
                        "Sign up",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      onTap: () {
                        GoRouter.of(context)
                            .pushReplacement(AppRouter.kSignUpView);
                      },
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 30),
                  child: Container(
                    width: 75.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 2.0),
                    ),
                    child: const CircleAvatar(
                      radius: 75.0,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/images/logo.png"),
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
