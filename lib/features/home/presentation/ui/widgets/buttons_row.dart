import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/features/home/presentation/logic/home_cubit/home_cubit.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Container(
          width: 315.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xff2C2C2E),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  context.read<HomeCubit>().changeColor("Breakfast");
                },
                child: AnimatedContainer(
                  height: 40.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: context.read<HomeCubit>().isSelected
                        ? AppColors.darkRed
                        : const Color(0xff2C2C2E),
                    borderRadius: context.read<HomeCubit>().isSelected
                        ? BorderRadius.circular(15)
                        : const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                  ),
                  duration: const Duration(milliseconds: 250),
                  child: Center(
                    child: Text(
                      "BreakFast",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          fontFamily: "Open sans",
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<HomeCubit>().changeColor("Lunch");
                },
                child: AnimatedContainer(
                  height: 40.h,
                  width: 105.w,
                  decoration: BoxDecoration(
                    borderRadius: context.read<HomeCubit>().isSelectedtwo
                        ? BorderRadius.circular(15)
                        : const BorderRadius.only(
                            topLeft: Radius.circular(0),
                            bottomLeft: Radius.circular(0),
                          ),
                    color: context.read<HomeCubit>().isSelectedtwo
                        ? AppColors.darkRed
                        : const Color(0xff2C2C2E),
                  ),
                  duration: const Duration(milliseconds: 250),
                  child: Center(
                    child: Text(
                      "lunch",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          fontFamily: "Open sans",
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<HomeCubit>().changeColor("Dinner");
                },
                child: AnimatedContainer(
                  height: 40.h,
                  width: 105.w,
                  decoration: BoxDecoration(
                    color: context.read<HomeCubit>().isSelectedthree
                        ? AppColors.darkRed
                        : const Color(0xff2C2C2E),
                    borderRadius: context.read<HomeCubit>().isSelectedthree
                        ? BorderRadius.circular(15)
                        : const BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                  ),
                  duration: const Duration(milliseconds: 250),
                  child: Center(
                    child: Text(
                      "Dinner",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          fontFamily: "Open sans",
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
