import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Mega Man',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy',
    'The King Of Fighters',
    'Tekken',
    'League of Legends'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
