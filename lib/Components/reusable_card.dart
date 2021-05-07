import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {Key key, this.boxColor = const Color(0xFF1D1E33), this.childWidget})
      : super(key: key);
  final Color boxColor;
  final Widget childWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: boxColor),
      margin: EdgeInsets.all(15),
      child: childWidget,
    );
  }
}
