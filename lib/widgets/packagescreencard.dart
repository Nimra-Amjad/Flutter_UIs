import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_task/widgets/custom_text.dart';

class PackageScreenCard extends StatelessWidget {
  final String text1;
  final String price;
  final String text2;
  final String image;
  final String imaget1;
  final String imaget2;
  final String imaget3;
  const PackageScreenCard(
      {super.key,
      required this.text1,
      required this.price,
      required this.text2,
      required this.image,
      required this.imaget1,
      required this.imaget2,
      required this.imaget3});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
              alignment: Alignment.center,
              width: 55.sp,
              height: 55.sp,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                color: Colors.blue,
              ),
              child: Image.asset(
                image,
              )),
          SizedBox(
            width: 18.sp,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomText(
                      text: text1,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      fontColor: Colors.blue),
                  CustomText(
                      text: price,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      fontColor: Colors.blue),
                ],
              ),
              SizedBox(
                height: 8.sp,
              ),
              CustomText(
                  text: text2,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  fontColor: Colors.blue),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          width: 35.sp,
                          height: 35.sp,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              color: Colors.lightBlue),
                          child: Image.asset(image)),
                      SizedBox(
                        height: 10.sp,
                      ),
                      CustomText(
                          text: imaget1,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          fontColor: Colors.blue),
                    ],
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          width: 35.sp,
                          height: 35.sp,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              color: Colors.lightBlue),
                          child: Image.asset(image)),
                      SizedBox(
                        height: 10.sp,
                      ),
                      CustomText(
                          text: imaget2,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          fontColor: Colors.blue),
                    ],
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          width: 35.sp,
                          height: 35.sp,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              color: Colors.lightBlue),
                          child: Image.asset(image)),
                      SizedBox(
                        height: 10.sp,
                      ),
                      CustomText(
                          text: imaget3,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          fontColor: Colors.blue),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
