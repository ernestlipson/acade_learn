import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void questionAns() {
    debugPrint('Question answered successfully');
  }

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List question = [
      'What\'s your favorite recipe',
      'State your favorite animal',
      'Give the details of your academy',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Beginer App',
          ),
        ),
        body: Column(
          children: [
            Text(
              question.elementAt(0),
            ),
            ElevatedButton(
              onPressed: questionAns, // Instead of calling the function
              // this is a pointer to the function.
              child: const Text('Click here for answer'),
            ),
            Text(
              question.elementAt(1),
            ),
            ElevatedButton(
              onPressed: questionAns,
              child: const Text('Click here for answer'),
            ),
            Text(
              question.elementAt(2),
            ),
            ElevatedButton(
              onPressed: questionAns,
              child: const Text('Click here for answer'),
            ),
          ],
        ),
      ),
    );
  }
}

class AppButtons extends StatefulWidget {
  const AppButtons({Key? key}) : super(key: key);

  @override
  State<AppButtons> createState() => _AppButtonsState();
}

class _AppButtonsState extends State<AppButtons> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
