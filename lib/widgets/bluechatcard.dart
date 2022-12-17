import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_task/widgets/custom_text.dart';

class BlueChatCard extends StatelessWidget {
  final String msg;
  const BlueChatCard({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.sp),
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue),
          width: 65.sp,
          height: 32.sp,
          child: CustomText(
              text: msg,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              fontColor: Colors.white),
        ),
      ),
    );
  }
}
