import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_task/widgets/custom_text.dart';

class WhiteChatCard extends StatelessWidget {
  final String name;
  final String time;
  final String msg;
  const WhiteChatCard(
      {super.key, required this.name, required this.time, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Container(
              width: 30.sp,
              height: 30.sp,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Image.asset("assets/images/emergency6.png"),
            ),
            title: CustomText(
                text: name,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                fontColor: Colors.black),
            subtitle: CustomText(
                text: time,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                fontColor: Colors.grey),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.sp),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              width: 65.sp,
              height: 32.sp,
              child: CustomText(
                  text: msg,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  fontColor: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
