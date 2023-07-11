import 'package:flutter/material.dart';

class CustomContainer2 extends StatelessWidget {
  const CustomContainer2(
      {super.key,
      required this.color,
      required this.cardChild,
      required this.width,
      required this.height});

  final Color color;
  final Widget cardChild;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5).copyWith(bottom: 0, top: 0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [],
        ),
        child: cardChild,
      ),
    );
  }
}
