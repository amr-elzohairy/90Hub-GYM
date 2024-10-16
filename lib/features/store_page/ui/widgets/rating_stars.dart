import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.star,
            size: 13,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.star,
            size: 13,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.star,
            size: 13,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.star,
            size: 13,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.star,
            color: Color(0xffAFAFAF),
            size: 13,
          ),
        ),
      ],
    );
  }
}
