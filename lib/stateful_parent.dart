import "package:flutter/material.dart";
import 'package:sp_inherited_/stateless_child.dart';

class StatefulParent extends StatefulWidget {
  const StatefulParent({Key? key}) : super(key: key);

  @override
  State<StatefulParent> createState() => _StatefulParentState();
}

class _StatefulParentState extends State<StatefulParent> {
  int _number = 0;

  void _decrease() {
    if (_number > 0) {
      setState(() {
        _number--;
      });
    } else {
      if (_number == 0) {
        setState(() {
          _number = 0;
        });
      }
    }
  }

  void _increase() {
    setState(() {
      _number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Parent")),
      body: statelessChild(
        number: _number,
        increment: _increase,
        decrement: _decrease,
      ),
    );
  }
}
