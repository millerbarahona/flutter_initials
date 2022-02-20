import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(
      fontSize: 30,
    );
    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Barra'),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
        },
        child: const Icon(Icons.settings_input_antenna_rounded),
        backgroundColor: Colors.deepPurpleAccent,
        splashColor: Colors.deepOrange,
      )
    );
  }
}
