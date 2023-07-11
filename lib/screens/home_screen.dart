import 'package:bmi/const/color.dart';
import 'package:bmi/const/text.dart';
import 'package:bmi/controller/home_screen_controller.dart';
import 'package:bmi/screens/result_screen.dart';
import 'package:bmi/widgets/custom_button.dart';
import 'package:bmi/widgets/custom_container.dart';
import 'package:bmi/widgets/custom_icon.dart';
import 'package:bmi/widgets/custom_spinner.dart';
import 'package:bmi/widgets/weight_age_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeScreenController homeScreenController =
      Get.find<HomeScreenController>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: appbarBackgroundColor,
        title: const Text(AppBarText),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Obx(
            () => Row(
              children: [
                CustomContainer(
                  width: (size.width / 2) - 10,
                  height: size.height / 5,
                  onPressed: () {
                    homeScreenController.selectedGender.value = genderMale;
                  },
                  color: homeScreenController.selectedGender.value == genderMale
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: const CustomIcon(
                    icon: Icons.male,
                    label: genderMale,
                    color: whiteColor,
                  ),
                ),
                CustomContainer(
                  width: (size.width / 2) - 10,
                  height: size.height / 5,
                  onPressed: () {
                    homeScreenController.selectedGender.value = genderFemale;
                  },
                  color:
                      homeScreenController.selectedGender.value == genderFemale
                          ? activeCardColor
                          : inactiveCardColor,
                  cardChild: const CustomIcon(
                    icon: Icons.female,
                    label: genderFemale,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
          ),
          CustomSpinner(),
          WeightAgeContainer(),
          const SizedBox(
            height: 80,
          ),
          CustomButton(
            titleText: 'Calculate',
            onPressed: () {
              homeScreenController.calculateBMI();
              Get.to(ResultScreen());
            },
            color: buttonColor,
          ),
        ],
      ),
    );
  }
}
