import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_task/widgets/custom_text.dart';

class TimePickCard extends StatelessWidget {
  final String time;
  final Color color;
  final Color textcolor;
  const TimePickCard({super.key, required this.time, required this.color, required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 45.sp,
      height: 28.sp,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.grey)),
      child: CustomText(
          text: time,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          fontColor: textcolor),
    );
  }
}
