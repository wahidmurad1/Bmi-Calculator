import 'package:bmi/controller/home_screen_controller.dart';
import 'package:bmi/screens/home_screen.dart';
import 'package:get/get.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
  }
}
