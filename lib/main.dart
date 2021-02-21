import 'package:flutter/material.dart';
import './question.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//class MyApp extends StatelessWidget {
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  var questions = [
    'What\' your favorite color?',
    'What\' your favorite animal?'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(
        children: [
          //Text(questions[_questionIndex]),
          Question(
            questionText: questions[_questionIndex],
          ),

          RaisedButton(
            onPressed: _answerQuestion,
            // onPressed: () => print('Answer 1 chosen'),
            child: Text('Answer 1'),
          ),
          RaisedButton(
            onPressed: () {
              //.........
              print('Answer 2 chosen');
            },
            child: Text('Answer 2'),
          ),
          RaisedButton(
            onPressed: _answerQuestion,
            child: Text('Answer 3'),
          ),
        ],
      ),
    ));
  }
}
