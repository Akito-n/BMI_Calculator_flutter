import 'package:flutter/material.dart';
import 'package:flutter_bmi_clulc/Components/icon_content.dart';
import 'package:flutter_bmi_clulc/Components/reusable_card.dart';
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
