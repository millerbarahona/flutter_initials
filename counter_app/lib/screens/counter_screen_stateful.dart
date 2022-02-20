import 'package:counter_app/widgets/custom_floating_buttons.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(
      fontSize: 30,
    );

    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Counter Barra'),
          ),
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 1,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Numero de Taps!🚀',
                style: fontSize,
              ),
              Text(
                '$counter',
                style: fontSize,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomFloatingButtons(
            increaseFunction: increase,
            decreaseFunction: decrease,
            restartFunction: reset,
            ));
  }
}
