import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  int? fibonacci;
  fibonacci = 89;

  var b = 'Geeks';
  String a = b ?? 'Hello';
  debugPrint(a);

  var c;
  String d = c ?? 'hello';

  List<int> lnumber = [1, 2, 3, 4, 5, 6];
  List<int> unumber = [7, 8, 9, 10, 11, 13];
  lnumber = [...lnumber, ...unumber];

  var names = ['jack', 'jill'];
  for (var item in names) {
    if (kDebugMode) {
      print(item);
    }
  }

  sqaure(9);
  showMsg(sqaure(78));
  pat(9, dar: 89);
  print(pat(9));
  Person person = Person('John Osei Darko', 4611118);
  person.show();
  var newperson = Person.age();
  debugPrint('Please print $newperson');
  Tools tools = Tools('Darko Ernest', 788);
  // tools.driver = 'James Darko';
  // tools.driverno = 5666;
  tools.showall();
}

dynamic sqaure(var number) => number * number;

void showMsg(var msg) {
  print(msg);
}

int pat(var tar, {var dar}) => tar + (dar ?? 0);
void printpat(Function() pater) {
  print(pater);
}

class Person {
  dynamic indexno;
  dynamic name;

  Person(this.name, [this.indexno = 18]);
  Person.age() {
    debugPrint('Provide Age');
  }

  //named constructor
  Person.college();

  void show() {
    if (kDebugMode) {
      print('Student A: Details $indexno');
    }
    if (kDebugMode) {
      print(name);
    }
  }
}

addnum(first, second) {}

class Tools {
  String driver;
  int driverno;

  Tools(this.driver, this.driverno);

  void showall() {
    // ignore
    print('$driver, $driverno');
  }
}
