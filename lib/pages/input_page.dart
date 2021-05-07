import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const defaultBoxColor = Color(0xFF1D1E33);
const defaultHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    boxColor: defaultBoxColor,
                    childWidget: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    boxColor: defaultBoxColor,
                    childWidget: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              boxColor: defaultBoxColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    boxColor: defaultBoxColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    boxColor: defaultBoxColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: defaultHeight,
            margin: EdgeInsets.only(top: 10.0),
            color: Colors.pinkAccent,
          )
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          accentColor: Colors.purple,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

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
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

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
