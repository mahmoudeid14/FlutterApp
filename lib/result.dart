import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resettHander;
  Result({this.resultScore, this.resettHander});
  String get resultPharse {
    var resultText = "";
    if (resultScore > 15)
      resultText = "You are excelent";
    else if (resultScore > 10)
      resultText = "You are very good";
    else if (resultScore > 8) resultText = "You are good";
    return resultText + " - Score " + resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPharse,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resettHander,
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
