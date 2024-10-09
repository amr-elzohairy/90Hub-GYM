import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/widgets/custom_button.dart';

class NextAndBackRow extends StatelessWidget {
  const NextAndBackRow({super.key, required this.route});
  final String route;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff3A3A3C),
          ),
          child: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        horizontalSpace(180),
        Expanded(
          child: CustomButton(
            buttonHeight: 45,
            text: "Next",
            onPressed: () {
              GoRouter.of(context).push(route);
            },
          ),
        ),
      ],
    );
  }
}
