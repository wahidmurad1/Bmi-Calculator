import 'package:bmi/const/color.dart';
import 'package:bmi/const/style.dart';
import 'package:bmi/const/text.dart';
import 'package:bmi/controller/home_screen_controller.dart';
import 'package:bmi/screens/home_screen.dart';
import 'package:bmi/widgets/custom_button.dart';
import 'package:bmi/widgets/custom_container2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});
  final HomeScreenController homeScreenController =
      Get.find<HomeScreenController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          resultAppBarText,
          style: textStyles,
        ),
        centerTitle: true,
        backgroundColor: appbarBackgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            homeScreenController.clearData();
            Get.offAll(HomeScreen());
          },
        ),
      ),
      backgroundColor: scaffoldBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            yourResultText,
            style: numberTextStyle,
          ),
          Text(
            homeScreenController.getResult(),
            style: stringTextStyles,
          ),
          Text(
            homeScreenController.calculateBMI(),
            style: numberTextStyle,
          ),
          Text(
            homeScreenController.getInterpretation(),
            style: textStyles,
          ),
          CustomButton(
              titleText: 'Re-Calculate',
              onPressed: () {
                Get.offAll(HomeScreen());
                homeScreenController.clearData();
              },
              color: buttonColor),
        ],
      ),
    );
  }
}
