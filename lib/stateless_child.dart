import "package:flutter/material.dart";

class statelessChild extends StatelessWidget {
  final number;
  final Function() increment;
  final Function() decrement;
  const statelessChild(
      {Key? key,
      required this.number,
      required this.increment,
      required this.decrement})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$number"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: increment, child: Text("Increament")),
              const SizedBox(width: 20),
              ElevatedButton(onPressed: decrement, child: Text("Decreament")),
            ],
          ),
        ],
      ),
    );
  }
}
