import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/features/profile/presentation/ui/widgets/profile_list_tile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 30.h),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF2C2C2E),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(right: 3.w),
                      child: IconButton(
                        onPressed: () {
                          GoRouter.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              verticalSpace(25),
              Padding(
                padding: EdgeInsets.only(left: 28.w, top: 5.h),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        SvgPicture.asset("assets/svgs/ProfileCircle.svg"),
                        Positioned(
                          top: 3.h,
                          left: 4.w,
                          child: Container(
                            height: 103.h,
                            width: 103.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.scaffoldBgColor,
                            ),
                            child:
                                Image.asset("assets/images/profileImage.png"),
                          ),
                        ),
                      ],
                    ),
                    horizontalSpace(65),
                    Container(
                      height: 130.h,
                      width: 1.w,
                      color: const Color(0xFF2C2C2E),
                    ),
                    horizontalSpace(24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Joined",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  color: const Color(0xFF505050),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Open sans"),
                        ),
                        verticalSpace(5),
                        Text(
                          "2 month ago",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Open sans"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              verticalSpace(10),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    "SARAH \nAhmed",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 32,
                        ),
                  ),
                ),
              ),
              verticalSpace(24),
              Container(
                height: 1.h,
                width: 300,
                color: const Color(0xFF2C2C2E),
              ),
              verticalSpace(3),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 7.w),
                child: ProfileListTile(
                  onPressed: () {},
                  title: "Edit Profile",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 7.w),
                child: ProfileListTile(
                  onPressed: () {},
                  title: "Privacy Policy",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 7.w),
                child: ProfileListTile(
                  onPressed: () {},
                  title: "Settings",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 7.w),
                child: ProfileListTile(
                  onPressed: () {},
                  title: "Get A Job",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 7.w),
                child: ProfileListTile(
                  onPressed: () {},
                  title: "Resignation",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 7.w),
                child: ProfileListTile(
                  onPressed: () {},
                  title: "Request Vacation",
                ),
              ),
              verticalSpace(25),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    "Sign Out",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 20.sp,
                        color: const Color(0XffFF2424),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Open sans"),
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

