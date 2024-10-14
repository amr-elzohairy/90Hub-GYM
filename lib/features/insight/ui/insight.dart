import 'package:flutter/material.dart';
import 'package:hubmaster/core/widgets/custom_calender.dart';

class Insight extends StatelessWidget {
  const Insight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomCalender(),
    );
  }
}
