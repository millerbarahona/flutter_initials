import 'package:flutter/material.dart';

class CustomFloatingButtons extends StatelessWidget {
  final Function increaseFunction;
  final Function decreaseFunction;
  final Function restartFunction;

  const CustomFloatingButtons({
    Key? key,
    required this.increaseFunction,
    required this.decreaseFunction,
    required this.restartFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => increaseFunction(),
          child: const Icon(Icons.add),
          backgroundColor: Colors.deepPurpleAccent,
          splashColor: Colors.deepOrange,
        ),
        FloatingActionButton(
          onPressed: () => restartFunction(),
          child: const Icon(Icons.directions_railway_filled_rounded),
          backgroundColor: Colors.deepPurpleAccent,
          splashColor: Colors.deepOrange,
        ),
        FloatingActionButton(
          onPressed: () => decreaseFunction(),
          child: const Icon(Icons.remove),
          backgroundColor: Colors.deepPurpleAccent,
          splashColor: Colors.deepOrange,
        )
      ],
    );
  }
}
