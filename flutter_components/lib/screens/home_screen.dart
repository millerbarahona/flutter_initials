import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Flutter Components')),
          elevation: 0,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: const Text('Nombre de ruta2'),
            leading: const Icon(Icons.alternate_email_rounded),
            onTap: () {
              // final route = MaterialPageRoute(builder: (context) => const ListView1Screen(),);
              // Navigator.push(context, route);

              Navigator.pushNamed(context, 'alert');
            },
          ),
          separatorBuilder: (_ , __) => const Divider(),
          itemCount: 10,
        ));
  }
}
