import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:hubmaster/core/widgets/custom_text_form_field.dart';
import 'package:hubmaster/features/store_page/ui/widgets/nike_row.dart';
import 'package:hubmaster/features/store_page/ui/widgets/store_page_list_item.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

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
          '90-HUB-Store',
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
                  icon: const Icon(
                    Icons.shopping_bag_rounded,
                    color: Color(0xff505050),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            verticalSpace(20),
            CustomTextFormField(
              hintTextStyle: const TextStyle(
                color: Color(0xff888E9A),
                fontFamily: "Futura",
              ),
              prefixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/svgs/search.svg",
                    color: const Color(0xff888E9A),
                  )),
              validator: (p0) {},
              hintText: "What do you looking for?",
            ),
            verticalSpace(20),
            const NikeRow(),
            verticalSpace(5),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: const DecorationImage(
                  image: AssetImage("assets/images/bannar.png"),
                ),
              ),
            ),
            verticalSpace(15),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular   ITEMS",
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: const Color(0xff3B3B3B)),
                ),
              ),
            ),
            verticalSpace(10),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) => const StorePageListItem(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
