import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String questionsText;
  Questions(this.questionsText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 2, left: 3, right: 35),
      child: Text(
        questionsText,
        style: TextStyle(
          fontSize: 56,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
