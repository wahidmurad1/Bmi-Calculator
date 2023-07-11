import 'package:get/get.dart';
import 'dart:math';

class HomeScreenController extends GetxController {
  RxString selectedGender = RxString('');
  RxInt height = 150.obs;
  RxInt weight = 60.obs;
  RxInt age = 20.obs;
  RxDouble bmi = 0.0.obs;

  String calculateBMI() {
    bmi.value = weight.value / pow(height.value / 100, 2);
    // print(bmi.value.toStringAsFixed(1));
    return bmi.value.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi.value >= 25) {
      return 'Overweight';
    } else if (bmi.value > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmi.value >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi.value >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  clearData() {
    height.value = 150;
    weight.value = 60;
    age.value = 20;
    selectedGender.value = '';
  }
}
