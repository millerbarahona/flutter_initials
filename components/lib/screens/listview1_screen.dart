import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Mega Man',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy',
    'The King Of Fighters',
    'Tekken',
    'League of Legends'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
                //los tres puntos son es operador spread para extraer todos los elementos de la List<Widwet>
                (game) =>  ListTile(
                  title: Text(game),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded,
                ),
              )
          ).toList() //.map() retorna un Iterable, .toList() lo convierte en una lista
        ],
      ),
    );
  }
}
