import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/features/store_page/ui/widgets/rating_stars.dart';

class StorePageListItem extends StatelessWidget {
  const StorePageListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xff2C2C2E),
        ),
        height: 212.h,
        width: 312.w,
        child: Stack(
          children: [
            Positioned(
              top: 8,
              child: Image.asset("assets/images/whey-removebg-preview 1.png"),
            ),
            Positioned(
              bottom: 65,
              left: 25,
              child: Text(
                "whey protein",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            const Positioned(
              bottom: 45,
              left: 25,
              child: RatingStars(),
            ),
            Positioned(
              bottom: 25,
              left: 25,
              child: Text(
                "Protein & Supplements",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: const Color(0xff888E9A),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Futura"),
              ),
            ),
            Positioned(
              right: 18,
              top: 17,
              child: Image.asset("assets/images/redCircle.png"),
            ),
            Positioned(
              right: 23,
              top: 24,
              child: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.favorite_border),
              ),
            ),
            Positioned(
              right: 28,
              bottom: 27,
              child: Image.asset("assets/images/bigRedCircle.png"),
            ),
            Positioned(
              right: 42,
              bottom: 40,
              child: Text(
                "\$189",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Futura"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
