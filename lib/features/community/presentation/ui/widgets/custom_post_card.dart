import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/features/community/presentation/ui/widgets/90_hub_coach.dart';
import 'package:hubmaster/features/community/presentation/ui/widgets/icons_row.dart';

class CustomPostCard extends StatelessWidget {
  const CustomPostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HubCoach90(),
        verticalSpace(20),
        Text(
          'Donec eleifend hendrerit purus et dignissim. Nunc lacinia lorem ut eros scelerisque, quis semper felis accumsan. Proin tempus dolor ex, at convallis mauris sollicitudin sit amet.',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff4F4F4F)),
        ),
        verticalSpace(30),
        Card(
          elevation: 0,
          child: Column(
            children: [
              Container(
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // color: AppColors.scaffoldBgColor,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/community-post-image.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        verticalSpace(18),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: const IconsRow(),
        ),
        verticalSpace(20),
      ],
    );
  }
}
