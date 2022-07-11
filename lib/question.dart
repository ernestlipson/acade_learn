import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question(this.question, {Key? key}) : super(key: key);

  // Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.6),
      child: Text(
        question,
        style: const TextStyle(
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
