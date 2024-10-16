import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubmaster/core/helpers/spacing.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        postIconBuilder("assets/svgs/like.svg", "13.898"),
        horizontalSpace(35),
        postIconBuilder("assets/svgs/comments.svg", "467"),
        horizontalSpace(120),
        postIconBuilder("assets/svgs/share.svg", "1675"),
      ],
    );
  }
  Widget postIconBuilder(String icon, String count) {
  return Row(
    children: [
      SvgPicture.asset(icon, height: 18),
      horizontalSpace(5),
      Text(
        count,
        style: const TextStyle(color: Color(0xff333333), fontSize: 14),
      ),
    ],
  );
}
}
