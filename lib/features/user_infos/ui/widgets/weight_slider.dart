import 'package:flutter/material.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/themes/app_colors.dart';

class WeightSlider extends StatefulWidget {
  const WeightSlider({super.key});

  @override
  State<WeightSlider> createState() => _WeightSliderState();
}

class _WeightSliderState extends State<WeightSlider> {
  double weightValues = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${weightValues.toInt()}",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 64,
                ),
              ),
              horizontalSpace(3),
              const Text('kg'),
            ],
          ),
        ),
        verticalSpace(10),
        Slider(
          activeColor: AppColors.darkRed,
          inactiveColor: Colors.black,
          min: 40,
          max: 200,
          value: weightValues,
          onChanged: (value) {
            setState(
              () {
                weightValues = value;
              },
            );
          },
        ),
      ],
    );
  }
}
