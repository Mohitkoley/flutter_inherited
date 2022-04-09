import 'package:flutter/material.dart';

class InheritedExample extends StatefulWidget {
  const InheritedExample({Key? key}) : super(key: key);

  @override
  State<InheritedExample> createState() => _InheritedExampleState();
}

class _InheritedExampleState extends State<InheritedExample> {
  int _number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inherited Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NumberInheritedWidget(number: _number, child: NestedWidget()),
            SizedBox(height: 10),
            ElevatedButton(
                child: Text("increase"),
                onPressed: () {
                  setState(() {
                    _number++;
                  });
                }),
            const SizedBox(height: 20),
            ElevatedButton(
                child: Text("decrease"),
                onPressed: () {
                  if (_number > 0) {
                    setState(() {
                      _number--;
                    });
                  }
                }),
          ],
        ),
      ),
    );
  }
}

class NumberInheritedWidget extends InheritedWidget {
  final int number;
  NumberInheritedWidget({Key? key, required this.number, required Widget child})
      : super(key: key, child: child);

  //Access the context
  static NumberInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NumberInheritedWidget>();
  }

  @override
  bool updateShouldNotify(NumberInheritedWidget oldWidget) =>
      oldWidget.number != number;
}

class NestedWidget extends StatelessWidget {
  const NestedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? number = NumberInheritedWidget.of(context)?.number;
    return Text("$number");
  }
}
