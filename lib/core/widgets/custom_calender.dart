import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubmaster/core/helpers/spacing.dart';
import 'package:hubmaster/core/themes/app_colors.dart';
import 'package:intl/intl.dart';

class CustomCalender extends StatefulWidget {
  @override
  _CustomCalenderState createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  DateTime selectedDate = DateTime.now();
  DateTime focusedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xff2C2C2E),
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
      height: 100.h, // Adjust height to fit day name and number
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: daysInMonth,
        itemBuilder: (context, index) {
          final day = index + 1;
          final date = DateTime(focusedDate.year, focusedDate.month, day);
          final dayName =
              DateFormat.E().format(date); // Get day name (Mon, Tue, etc.)

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
              width: 60.w, // Width for each day item
              alignment: Alignment.center,
              margin: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(),
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
                      // color: _getDayColor(date),
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
}
