// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:intl/intl.dart';

class CustomCalender extends StatefulWidget {
  const CustomCalender({super.key});

  @override
  _CustomCalenderState createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  DateTime selectedDate = DateTime.now();
  DateTime focusedDate = DateTime.now();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollToCurrentDay();
    });
  }

  // Method to scroll to the current day
  void scrollToCurrentDay() {
    final currentDay = DateTime.now().day;
    // Calculate the scroll position based on the day index and item width (adjusted for margins)
    double scrollPosition =
        (currentDay - 1) * 58.w; // Approximate width including margin
    _scrollController.animateTo(
      scrollPosition,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xff2C2C2E),
      ),
      child: Column(
        children: [
          _monthSwitcher(),
          _dayRow(),
        ],
      ),
    );
  }

  Widget _monthSwitcher() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_left),
            onPressed: () {
              setState(() {
                focusedDate = DateTime(focusedDate.year, focusedDate.month - 1);
              });
            },
          ),
          Text(
            DateFormat.yMMMM().format(focusedDate),
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_right),
            onPressed: () {
              setState(() {
                focusedDate = DateTime(focusedDate.year, focusedDate.month + 1);
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _dayRow() {
    final daysInMonth =
        DateTime(focusedDate.year, focusedDate.month + 1, 0).day;

    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: daysInMonth,
        itemBuilder: (context, index) {
          final day = index + 1;
          final date = DateTime(focusedDate.year, focusedDate.month, day);
          final dayName = DateFormat.E().format(date);

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedDate = date;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                color: _getDayColor(date),
              ),
              width: 60.w, // Adjust this based on your desired width
              alignment: Alignment.center,
              margin: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dayName.substring(0, 1), // Show first letter of day name
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace(8), // Spacing between day name and number
                  Container(
                    alignment: Alignment.center,
                    width: 40.w,
                    height: 40.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      day.toString(),
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Color _getDayColor(DateTime date) {
    if (date.year == selectedDate.year &&
        date.month == selectedDate.month &&
        date.day == selectedDate.day) {
      return AppColors.darkRed; // Highlighted selected day
    } else if (date.year == DateTime.now().year &&
        date.month == DateTime.now().month &&
        date.day == DateTime.now().day) {
      return Colors.blue; // Today's date
    } else {
      return const Color(0xff3A3A3C);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
