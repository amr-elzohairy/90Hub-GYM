import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/features/community/presentation/ui/widgets/custom_post_card.dart';


class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBgColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: const Icon(
              Icons.dehaze_sharp,
              color: Color(0xff505050),
            ),
          ),
        ),
        title: Text(
          'COMMUNITY',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontSize: 22.sp,
              fontFamily: "IntegralCF",
              fontWeight: FontWeight.w400),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svgs/search.svg"),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svgs/Notification.svg"),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => const CustomPostCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
