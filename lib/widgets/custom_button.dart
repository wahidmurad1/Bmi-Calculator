import 'package:bmi/const/color.dart';
import 'package:bmi/const/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.titleText,
      required this.onPressed,
      required this.color});
  final String titleText;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: color,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          titleText,
          style: textStyles,
        ),
      ),
    );
  }
}
