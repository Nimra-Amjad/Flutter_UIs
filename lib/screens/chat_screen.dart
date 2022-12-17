import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_task/widgets/bluechatcard.dart';
import 'package:test_task/widgets/custom_text.dart';
import 'package:test_task/widgets/whitechatcard.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 14.sp,bottom: 14.sp, left: 15.sp, right: 15.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.reorder_sharp,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.sp, bottom: 10.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30.sp,
                        height: 30.sp,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0)),
                        child: const Icon(Icons.chat),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      CustomText(
                          text: "Hi There!",
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                          fontColor: Colors.white),
                      SizedBox(
                        height: 20.sp,
                      ),
                      CustomText(
                          text:
                              "Welcome to Online Service. How can \nwe help you todays?",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          fontColor: Colors.white),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.sp,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const BlueChatCard(
                      msg:
                          "Of course. Are you interested in\nmonth-to-month or long term?"),
                  SizedBox(
                    height: 20.sp,
                  ),
                  CustomText(
                      text: "July 25 23.34",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      fontColor: Colors.grey),
                  SizedBox(
                    height: 8.sp,
                  ),
                  const WhiteChatCard(
                      name: "Isla",
                      time: "1m ago",
                      msg:
                          "Hi,Could you tell me more about\nyour subscription options?"),
                  SizedBox(
                    height: 12.sp,
                  ),
                  const BlueChatCard(
                      msg:
                          "Of course. Are you interested in\nmonth-to-month or long term?"),
                  SizedBox(
                    height: 12.sp,
                  ),
                  const WhiteChatCard(
                      name: "Isla",
                      time: "2m ago",
                      msg:
                          "Hi,Could you tell me more about\nyour subscription options?"),
                  SizedBox(
                    height: 12.sp,
                  ),
                  const BlueChatCard(
                      msg:
                          "Of course. Are you interested in\nmonth-to-month or long term?"),
                  SizedBox(
                    height: 12.sp,
                  ),
                  const BlueChatCard(
                      msg:
                          "Of course. Are you interested in\nmonth-to-month or long term?"),
                  SizedBox(
                    height: 12.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white),
                          width: 75.sp,
                          height: 32.sp,
                          child: CustomText(
                              text: "Write a reply...",
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              fontColor: Colors.grey),
                        ),
                        Icon(Icons.sim_card_outlined),
                        Icon(Icons.photo_library),
                        Icon(Icons.attach_file),
                        Icon(
                          Icons.message_outlined,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
