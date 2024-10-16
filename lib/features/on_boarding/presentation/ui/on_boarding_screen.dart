import 'package:flutter/material.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/features/on_boarding/presentation/ui/screen_one.dart';
import 'package:hubmaster/features/on_boarding/presentation/ui/screen_three.dart';
import 'package:hubmaster/features/on_boarding/presentation/ui/screen_two.dart';
import 'package:hubmaster/features/on_boarding/presentation/ui/widgets/custom_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                controller: _controller,
                children: const [
                  ScreenOne(),
                  ScreenTwo(),
                  ScreenThree(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIndicator(avtive: index == 0),
                  horizontalSpace(5),
                  CustomIndicator(avtive: index == 1),
                  horizontalSpace(5),
                  CustomIndicator(avtive: index == 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
