import 'package:flutter/material.dart';
import 'package:flutter_bmi_clulc/components/BarButton.dart';
import 'package:flutter_bmi_clulc/components/reusable_card.dart';
import 'package:flutter_bmi_clulc/utility/constant.dart';

class ResultRouteArgs {
  ResultRouteArgs({this.title, this.result, this.advise});
  final String result;
  final String title;
  final String advise;
}

class ResultPage extends StatelessWidget {
  static const routeName = '/result';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as ResultRouteArgs;
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
                args.title,
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              boxColor: kActiveBoxColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    args.result,
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    args.advise,
                    style: TextStyle(fontSize: 22.0),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BarButton(
            title: 'Re CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
