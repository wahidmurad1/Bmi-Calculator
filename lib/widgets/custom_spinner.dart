import 'package:bmi/const/color.dart';
import 'package:bmi/const/style.dart';
import 'package:bmi/const/value.dart';
import 'package:bmi/controller/home_screen_controller.dart';
import 'package:bmi/widgets/custom_container2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSpinner extends StatelessWidget {
  CustomSpinner({super.key});

  final HomeScreenController homeScreenController =
      Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Obx(() => Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CustomContainer2(
            width: size.width,
            height: size.height / 5,
            color: inactiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HEIGHT',
                  style: labelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '${homeScreenController.height.value.toString()}',
                      style: numberTextStyle,
                    ),
                    const Text(
                      'cm',
                      style: labelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: inactiveTrackColor,
                    activeTrackColor: whiteColor,
                    thumbColor: thumbColor,
                    overlayColor: overlayColor,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                    value: homeScreenController.height.value
                        .toDouble(), //height.toDouble(),
                    min: minValue,
                    max: maxValue,
                    onChanged: (double newValue) {
                      homeScreenController.height.value = newValue.round();
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
