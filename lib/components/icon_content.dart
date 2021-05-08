import 'package:flutter/material.dart';
import 'package:flutter_bmi_clulc/utility/constant.dart';

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
          size: kIconSize,
        ),
        SizedBox(height: kBoxHeight),
        Text(text, style: kLabelTextStyle),
      ],
    );
  }
}
