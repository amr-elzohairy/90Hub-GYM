import 'package:flutter/material.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/features/on_boarding/ui/widgets/bottom_bevel_clipper.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: ClipPath(
                        clipper: BottomBevelClipper(),
                        child: Image.asset(
                          'assets/images/Rectangle 6 (1).png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.black, Colors.black12],
                        ),
                      ),
                      width: double.maxFinite,
                      height: double.maxFinite,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            textAlign: TextAlign.center,
            'CREATE A WORKOUT PLAN\n TO STAY FIT',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          verticalSpace(2),
          // Text(
          //   'TO STAY FIT',
          //   style: TextStyles.font24BoldWhiteInter,
          // ),
        ],
      ),
    );
  }
}
