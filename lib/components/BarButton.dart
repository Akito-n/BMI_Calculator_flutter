import 'package:flutter/material.dart';
import 'package:flutter_bmi_clulc/utility/constant.dart';

class BarButton extends StatelessWidget {
  const BarButton({Key key, @required this.title, @required this.onTap})
      : super(key: key);

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: kBottomHeight,
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: Colors.pinkAccent,
      ),
    );
  }
}
