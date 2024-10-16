import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubmaster/features/home/logic/home_cubit/home_cubit.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, // This preven
            onTap: (index) => context.read<HomeCubit>().changeIndex(index),
            currentIndex: context.read<HomeCubit>().index,
            items: [
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: SvgPicture.asset(
                    'assets/svgs/Home.svg',
                    color: Colors.white,
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: SvgPicture.asset(
                    'assets/svgs/Home.svg',
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: SvgPicture.asset(
                    'assets/svgs/statics.svg',
                    color: Colors.white,
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: SvgPicture.asset('assets/svgs/statics.svg'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: SvgPicture.asset(
                    'assets/svgs/community.svg',
                    color: Colors.white,
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: SvgPicture.asset('assets/svgs/community.svg'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: SvgPicture.asset(
                    'assets/svgs/cart.svg',
                    color: Colors.white,
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: SvgPicture.asset('assets/svgs/cart.svg'),
                ),
                label: '',
              ),
            ],
          ),
        );
      },
    );
  }
}
