import 'package:flutter/material.dart';

const iconSize = 80.0;
const boxHeight = 15.0;
const fontSize = 18.0;
const textColor = Color(0xFF8D8E98);

class IconContent extends StatelessWidget {
  IconContent({Key key, this.icon, this.text}) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(height: boxHeight),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
