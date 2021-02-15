import 'package:bmi_calculator/constatnts.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String text;
  final IconData iconType;

  IconContent({this.text, this.iconType});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconType,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: kLabelStyleText,
        ),
      ],
    );
  }
}
