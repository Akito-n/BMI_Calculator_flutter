import 'package:flutter/material.dart';
import 'package:flutter_bmi_clulc/components/reusable_card.dart';
import 'package:flutter_bmi_clulc/utility/constant.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CAL'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ReusableCard(
              boxColor: kActiveBoxColor,
              childWidget: Column(
                children: [
                  Text(
                    'Normal',
                    style: TextStyle(color: Colors.green),
                  ),
                  Text(
                    '18.3',
                    style: kNumberTextStyle,
                  ),
                  Text('your result is quite low, you should eat more')
                ],
              ),
            ),
          ),
          Expanded(child: Text('sample'))
        ],
      ),
    );
  }
}
