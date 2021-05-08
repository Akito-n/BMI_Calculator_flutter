import 'package:flutter/material.dart';
import 'package:flutter_bmi_clulc/Components/icon_content.dart';
import 'package:flutter_bmi_clulc/Components/reusable_card.dart';
import 'package:flutter_bmi_clulc/utility/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        ? kActiveBoxColor
                        : kInactiveBoxColor,
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
                        ? kActiveBoxColor
                        : kInactiveBoxColor,
                    childWidget: IconContent(
                        icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              boxColor: kActiveBoxColor,
              childWidget: Column(
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '180',
                        style: kNumberTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    boxColor: kActiveBoxColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    boxColor: kActiveBoxColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: kBottomHeight,
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
