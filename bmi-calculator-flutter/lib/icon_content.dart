import 'package:flutter/material.dart';

const labelStyleText = TextStyle(
  fontSize: 18,
  color: Color(0xff8d8e98),
);

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
          style: labelStyleText,
        ),
      ],
    );
  }
}
