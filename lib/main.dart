import 'package:flutter/material.dart';
import 'package:flutter_bmi_clulc/screens/result_page.dart';

import 'screens//input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        ResultPage.routeName: (context) => ResultPage(),
      },
      // onGenerateInitialRoutes: (settings) {
      //   if (true) {}
      // },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}

// class SampleWithPush extends StatelessWidget {
//   static Route<dynamic> route() {
//     return MaterialPageRoute<dynamic>(
//       builder: (_) => SampleWithPush(),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Anything();
//   }
// }
