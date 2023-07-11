import 'package:bmi/const/color.dart';
import 'package:bmi/const/style.dart';
import 'package:bmi/controller/home_screen_controller.dart';
import 'package:bmi/widgets/custom_container2.dart';
import 'package:bmi/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightAgeContainer extends StatelessWidget {
  WeightAgeContainer({super.key});
  final HomeScreenController homeScreenController =
      Get.find<HomeScreenController>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Obx(
        () => Row(
          children: [
            CustomContainer2(
              width: (size.width / 2) - 10,
              height: size.height / 5,
              color: inactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'WEIGHT',
                    style: labelTextStyle,
                  ),
                  Text(
                    homeScreenController.weight.value.toString(),
                    style: numberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundedIconButton(
                          icon: Icons.remove,
                          onPressed: () {
                            homeScreenController.weight.value--;
                          }),
                      const SizedBox(
                        width: 10.0,
                      ),
                      RoundedIconButton(
                        icon: Icons.add,
                        onPressed: () {
                          homeScreenController.weight.value++;
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomContainer2(
              width: (size.width / 2) - 10,
              height: size.height / 5,
              color: inactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'AGE',
                    style: labelTextStyle,
                  ),
                  Text(
                    homeScreenController.age.value.toString(),
                    style: numberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundedIconButton(
                        icon: Icons.remove,
                        onPressed: () {
                          homeScreenController.age.value--;
                        },
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      RoundedIconButton(
                          icon: Icons.add,
                          onPressed: () {
                            homeScreenController.age.value++;
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
