import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function answrsfunction;
  final String AnsText;
  Answers(this.answrsfunction, this.AnsText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(AnsText),
        onPressed: answrsfunction,
      ),
    );
  }
}
