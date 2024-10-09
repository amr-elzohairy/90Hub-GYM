import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/routing/app_router.dart';
import 'package:hubmaster/core/widgets/custom_button.dart';
import 'package:hubmaster/features/user_infos/ui/widgets/gender_options.dart';

class GenderSelectionScreen extends StatefulWidget {
  const GenderSelectionScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GenderSelectionScreenState createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 60.h),
          child: Column(
            children: [
              Text(
                "TELL US ABOUT YOURSELF!",
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "TO GIVE YOU A BETTER EXPERIENCE WE NEED\n TO KNOW YOUR GENDER",
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
              verticalSpace(132),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = 'Male';
                  });
                },
                child: GenderOption(
                  gender: "Male",
                  isSelected: selectedGender == 'Male',
                  iconData: Icons.male,
                ),
              ),
              verticalSpace(44),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = 'Female';
                  });
                },
                child: GenderOption(
                  gender: "Female",
                  isSelected: selectedGender == 'Female',
                  iconData: Icons.female,
                ),
              ),
              verticalSpace(110),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: CustomButton(
                  text: "Next",
                  onPressed: selectedGender.isNotEmpty
                      ? () {
                          GoRouter.of(context).push(AppRouter.kWeightSelection);
                        }
                      : () {
                          dialogErrMessage(context);
                        },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> dialogErrMessage(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              child: const Text('close'))
        ],
        content: const Text('Select Gender!'),
      ),
    );
  }
}
