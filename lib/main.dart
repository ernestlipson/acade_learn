import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Beginer App',
          ),
        ),
        body: Column(
          children: [
            const Text('The Available Question'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click here'),
            ),
          ],
        ),
      ),
    );
  }
}
