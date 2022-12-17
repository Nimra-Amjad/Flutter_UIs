import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_task/widgets/custom_text.dart';
import 'package:test_task/widgets/packagescreencard.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back, color: Colors.blue),
            CustomText(
                text: "Package",
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                fontColor: Colors.blue),
            Icon(Icons.reorder_sharp, color: Colors.blue),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PackageScreenCard(
                text1: "5 T-Shirts Dry and Ceaning",
                price: "(60)",
                text2: "You will get 10 off buy this package",
                image: "assets/images/emergency1.png",
                imaget1: "Wash",
                imaget2: "Drycleaning",
                imaget3: "Iron"),
            SizedBox(
              height: 15.sp,
            ),
            const PackageScreenCard(
                text1: "Shirt jeans slip Dry and cleaning",
                price: "(40)",
                text2: "You will get 10 off buy this package",
                image: "assets/images/emergency2.png",
                imaget1: "Wash",
                imaget2: "Drycleaning",
                imaget3: "Iron"),
            SizedBox(
              height: 15.sp,
            ),
            const PackageScreenCard(
                text1: "5 T-Shirts Dry and Ceaning",
                price: "(60)",
                text2: "You will get 10 off buy this package",
                image: "assets/images/emergency3.png",
                imaget1: "Wash",
                imaget2: "Drycleaning",
                imaget3: "Iron"),
            SizedBox(
              height: 15.sp,
            ),
            const PackageScreenCard(
                text1: "5 T-Shirts Dry and Ceaning",
                price: "(60)",
                text2: "You will get 10 off buy this package",
                image: "assets/images/emergency4.png",
                imaget1: "Wash",
                imaget2: "Drycleaning",
                imaget3: "Iron"),
            SizedBox(
              height: 15.sp,
            ),
            const PackageScreenCard(
                text1: "5 T-Shirts Dry and Ceaning",
                price: "(60)",
                text2: "You will get 10 off buy this package",
                image: "assets/images/emergency5.png",
                imaget1: "Wash",
                imaget2: "Drycleaning",
                imaget3: "Iron")
          ],
        ),
      ),
    );
  }
}
