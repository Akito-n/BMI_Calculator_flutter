import 'package:flutter/material.dart';
import 'package:flutter_bmi_clulc/Components/icon_content.dart';
import 'package:flutter_bmi_clulc/Components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeBoxColor = Color(0xFF1D1E33);
const inactiveBoxColor = Color(0xFF111328);
const defaultHeight = 80.0;

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;

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
                    handleTap: () {
                      setState(
                        () {
                          selectedGender = GenderType.male;
                        },
                      );
                    },
                    boxColor: selectedGender == GenderType.male
                        ? activeBoxColor
                        : inactiveBoxColor,
                    childWidget: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    handleTap: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    boxColor: selectedGender == GenderType.female
                        ? activeBoxColor
                        : inactiveBoxColor,
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
              boxColor: activeBoxColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    boxColor: activeBoxColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    boxColor: activeBoxColor,
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
