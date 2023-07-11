import 'package:bmi/binder/allcontrollerbinding.dart';
import 'package:bmi/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  AllControllerBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
