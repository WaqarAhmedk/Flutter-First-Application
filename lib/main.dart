import 'package:app1/answer.dart';
import 'package:flutter/material.dart';

import 'Question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      "question": "Waht is your name ?",
      "answers": ["waqar", "ali", "ahsan"]
    },
    {
      "question": "Waht is your favourite color ?",
      "answers": ["Red", "Green", "black"]
    },
    {
      "question": "Waht is your class ?",
      "answers": ["1st", "2nd", "3rd"]
    }
  ];
  var _qindex = 0;
  void _ChangeQuestion() {
    setState(() {
      _qindex = _qindex + 1;
    });

    print(_qindex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _qindex > questions.length
            ? Column(
                children: [
                  Questions(questions[_qindex]["question"]),
                  ...(questions[_qindex]["answers"] as List<String>)
                      .map((answer) {
                    return Answers(_ChangeQuestion, answer);
                  }).toList(),
                ],
              )
            : Center(
                child: Text("You did it mann"),
              ),
      ),
    );
  }
}
