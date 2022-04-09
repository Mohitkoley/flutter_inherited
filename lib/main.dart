import 'package:flutter/material.dart';
import 'package:sp_inherited_/inherited_example.dart';
import 'package:sp_inherited_/stateful_example.dart';
import 'package:sp_inherited_/stateful_parent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          //InheritedExample(), //example 3 Inheritance
          //StatefulParent(), //example 2
          MyHomePage(title: 'Flutter Demo Home Page'), //example 1
    );
  }
}
