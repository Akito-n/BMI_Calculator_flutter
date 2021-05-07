import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {Key key,
      this.boxColor = const Color(0xFF1D1E33),
      this.childWidget,
      this.handleTap})
      : super(key: key);
  final Color boxColor;
  final Widget childWidget;
  final Function handleTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleTap,
      child: Container(
        decoration: BoxDecoration(color: boxColor),
        margin: EdgeInsets.all(15.0),
        child: childWidget,
      ),
    );
  }
}
