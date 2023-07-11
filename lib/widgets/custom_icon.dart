import 'package:bmi/const/style.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key,
      required this.icon,
      required this.label,
      required this.color});

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: color,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
