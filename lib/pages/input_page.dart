import 'package:flutter/material.dart';

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

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key key, this.boxColor = const Color(0xFF1D1E33)})
      : super(key: key);
  final Color boxColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: boxColor),
      margin: EdgeInsets.all(15),
    );
  }
}
