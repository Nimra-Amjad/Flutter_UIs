import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_task/widgets/custom_text.dart';

class DatePickCard extends StatelessWidget {
  final Color color;
  final Color? textcolor;
  final String day;
  final String date;
  final String title;
  const DatePickCard(
      {super.key,
      this.textcolor = Colors.white,
      required this.color,
      required this.day,
      required this.date,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.grey)),
      alignment: Alignment.center,
      width: 40.sp,
      height: 40.sp,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: 50.sp,
            height: 26.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0)),
              color: color,
            ),
            child: CustomText(
                text: day,
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
                fontColor: textcolor),
          ),
          SizedBox(
            height: 12.sp,
          ),
          CustomText(
              text: date,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              fontColor: Colors.grey),
          SizedBox(
            height: 8.sp,
          ),
          CustomText(
              text: title,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              fontColor: Colors.grey),
        ],
      ),
    );
  }
}
