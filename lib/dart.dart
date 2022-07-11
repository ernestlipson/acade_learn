import 'package:flutter/material.dart';

String getName(firstname, lastname) {
  return '$firstname $lastname';
}

// conditional invocation
void testString(List<String>? names) {
  final noNames = names?.length ?? 0;
  names?.add('infinity');
  // var great ??= 'Infinty, Season';
}

enum PersonProperties { firstName, lastName, age }

void test(String? firstname, String? middleName, String? lastname) {
  String? name = firstname;
  name ??= middleName; // Nul aware operator
  name ??= lastname;
  int? age = 20;
  age = null;
  // int myfigure;
  // String? myname;
  // const name = 'ernest.darko';
  if (name == 'ernest.darko') print('Yes, That is true');
  List<String> groupNames = ['kenpong', 'Oppong', 'Jospong', 'Kwanpong'];
  groupNames.length;
  groupNames.elementAt(2);
}

void main() {
  runApp(const MyApp());
  PersonProperties.firstName.name;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugPrint(getName('Ernest', 'Darko'));
    test(null, 'James Oppong', 'Ernest Darko');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
