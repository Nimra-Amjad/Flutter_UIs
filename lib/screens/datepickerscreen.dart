import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_task/widgets/custom_text.dart';
import 'package:test_task/widgets/datepickcard.dart';
import 'package:test_task/widgets/timepickcard.dart';

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({super.key});

  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  bool isSwitched = false;
  String? weekvalue;
  String? timevalue;

  var week = [
    'Only Monday',
    'Only Tuesday',
    'Only Wednesday',
    'Only Thursday',
    'Only Friday',
  ];

  var time = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
            CustomText(
                text: "Pickup Date",
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                fontColor: Colors.blue),
            const Icon(Icons.reorder_sharp, color: Colors.blue)
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: 14.sp, bottom: 14.sp, left: 14.sp, right: 14.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomText(
                      text: "When would you like your pickup?",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontColor: Colors.grey),
                  const Icon(Icons.calendar_month)
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                children: [
                  const DatePickCard(
                      color: Colors.grey,
                      day: "Fri",
                      date: "25 Jun",
                      title: "Yesterday"),
                  SizedBox(
                    width: 18.sp,
                  ),
                  const DatePickCard(
                      color: Colors.blue,
                      day: "Sat",
                      date: "26 Jun",
                      title: "Today"),
                  SizedBox(
                    width: 18.sp,
                  ),
                  const DatePickCard(
                      textcolor: Colors.black,
                      color: Colors.white,
                      day: "Sun",
                      date: "27 Jun",
                      title: "Tommorrow"),
                  SizedBox(
                    width: 18.sp,
                  ),
                  const DatePickCard(
                      color: Colors.red,
                      day: "Mon",
                      date: "29 Jun",
                      title: "Blockday"),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              CustomText(
                  text: "Available time slots",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: Colors.grey),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                children: [
                  const TimePickCard(
                    time: "7am - 9pm",
                    color: Colors.blue,
                    textcolor: Colors.white,
                  ),
                  SizedBox(
                    width: 18.sp,
                  ),
                  const TimePickCard(
                    time: "10am - 12pm",
                    color: Colors.white,
                    textcolor: Colors.grey,
                  ),
                  SizedBox(
                    width: 18.sp,
                  ),
                  const TimePickCard(
                    time: "1pm - 2pm",
                    color: Colors.white,
                    textcolor: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                children: [
                  const TimePickCard(
                    time: "4pm - 6pm",
                    color: Colors.white,
                    textcolor: Colors.grey,
                  ),
                  SizedBox(
                    width: 18.sp,
                  ),
                  const TimePickCard(
                    time: "8pm - 10pm",
                    color: Colors.white,
                    textcolor: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                width: 87.sp,
                height: 28.sp,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          text: "Repeat Pickup",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          fontColor: Colors.grey),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeTrackColor: Colors.lightBlue,
                        activeColor: Colors.blue,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.sp),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                      text: "How Often Repeat?",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontColor: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.sp),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: DropdownButton(
                    isExpanded: true,
                    hint: const Text("Every week"),
                    underline: Container(color: Colors.transparent),
                    focusColor: Colors.transparent,
                    value: weekvalue,
                    icon: const Icon(Icons.arrow_drop_down),
                    items: week.map((String week) {
                      return DropdownMenuItem(
                        value: week,
                        child: Text(
                          week,
                          style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        weekvalue = newValue!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.sp),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                      text: "How Many times?",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontColor: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.sp),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: DropdownButton(
                    isExpanded: true,
                    hint: const Text("1"),
                    underline: Container(color: Colors.transparent),
                    focusColor: Colors.transparent,
                    value: timevalue,
                    icon: const Icon(Icons.arrow_drop_down),
                    items: time.map((String time) {
                      return DropdownMenuItem(
                        value: time,
                        child: Text(
                          time,
                          style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        timevalue = newValue!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              SizedBox(
                width: 90.sp,
                height: 30.sp,
                child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: CustomText(
                      text: "Continue",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontColor: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
