import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //String questionText;
  final String questionText;
  // final keyword tells dart that this value never changed after intinalizing
  // Question(String quText) {
  //   questionText = quText;
  // }
  Question({this.questionText});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        child: Text(
          questionText,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ));
  }
}
